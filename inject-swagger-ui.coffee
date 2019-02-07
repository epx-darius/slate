converter = require 'widdershins'
fs = require 'fs'
yaml = require 'yaml'
path = require 'path'
Q = require 'q'

# Load data from included Markdown File
loadIncludedMarkdown = (name) =>
  target = __dirname + "/source/includes/_#{name}.md"
  return fs.readFileSync target, 'utf8'

# Load and parse data from swagger spec
loadSwaggerSpecification = (spec_version) =>
  target = __dirname + "/source/swagger/epharmix.api.#{spec_version}.yaml"
  epxSwaggerYaml = fs.readFileSync target, 'utf8'
  return yaml.parse epxSwaggerYaml

# Convert OpenApi Conforming object to Slate Markdown w/ widdershins
convertApiConfigToPromiseForMarkdown = (apiObject, options) =>
  return Q.denodeify(converter.convert)(apiObject, options)

# Grab our swagger specification (v1) as an object
epxApiObj = loadSwaggerSpecification('1')
# Lets manually throw some markdown in description sections we would like to beef up.
epxApiObj.info.description = loadIncludedMarkdown('introduction')
epxApiObj.tags[0].description = loadIncludedMarkdown('patients')
epxApiObj.tags[1].description = loadIncludedMarkdown('contacts')
epxApiObj.tags[2].description = loadIncludedMarkdown('triage')
epxApiObj.tags[3].description = loadIncludedMarkdown('alerts')
epxApiObj.components.securitySchemes.BearerAuth.description = loadIncludedMarkdown('authentication')

# Render Markdown from apiObject
options =
  source: '/source/index.html.md'
  includes: ['errors']
  tocSummary: true
  verbose: true
  expandBody: true
  omitHeader: true
  shallowSchemas: true
  httpsnippet: true
  search: true
  lang: true
  language_tabs: [{'javascript--nodejs': 'Node.js'}, {'python': 'Python'}]
  language_clients: [{'node': 'request'}, {'python': 'requests'}]
renderedMarkdown = convertApiConfigToPromiseForMarkdown(epxApiObj, options)
  .then (renderedMarkdown) =>
    # write to the source file
    outfile = __dirname + options.source
    if outfile?
      fs.writeFileSync path.resolve(outfile), renderedMarkdown, 'utf-8', (err) ->
        if err?
          throw err
    return renderedMarkdown


    


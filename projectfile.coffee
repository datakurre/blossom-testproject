require 'blossom/buildtools'  # adds the SC and BT namespaces as globals

path = require 'path'

project = BT.Project.create
  "app": BT.App.create
    frameworks: do 'blossom'.w
    # frameworks: do 'foundation datastore application'.w,
    sourceTree: path.join __dirname, 'my_app'
  "blossom": require 'blossom'
  # "foundation": require 'blossom/foundation',
  # "datastore": require 'blossom/datastore',
  # "application": require 'blossom/application'

# project.accept do BT.LoggingVisitor.create

BT.Server.create project: project

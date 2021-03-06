## site.pp ##

# Disable filebucket by default for all File resources:
#https://docs.puppet.com/pe/2015.3/release_notes.html#filebucket-resource-no-longer-created-by-default
File { backup => false }

node webserver.local {
  include roles::webserver
}

node database.local {
  include roles::database_server
}

node this.is.only.used.for.unit.tests { }

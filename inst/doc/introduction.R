## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----eval = FALSE-------------------------------------------------------------
# chroma_docker_run()
# # use chroma_docker_stop() to stop the container

## ----eval=FALSE---------------------------------------------------------------
# library(rchroma)
# 
# # Connect to a local ChromaDB instance
# client <- chroma_connect()
# 
# # Check the connection
# heartbeat(client)
# version(client)

## ----eval=FALSE---------------------------------------------------------------
# # Create a new collection
# create_collection(client, "my_collection")
# 
# # List all collections
# list_collections(client)
# 
# # Get a specific collection
# get_collection(client, "my_collection")

## ----eval=FALSE---------------------------------------------------------------
# # Add documents with embeddings
# docs <- c(
#   "apple fruit",
#   "banana fruit",
#   "carrot vegetable"
# )
# embeddings <- list(
#   c(1.0, 0.0, 0.0), # apple
#   c(0.8, 0.2, 0.0), # banana (similar to apple)
#   c(0.0, 0.0, 1.0) # carrot (different)
# )
# 
# # Add documents to the collection
# add_documents(
#   client,
#   "my_collection",
#   documents = docs,
#   ids = c("doc1", "doc2", "doc3"),
#   embeddings = embeddings
# )
# 
# # Query similar documents using embeddings
# results <- query(
#   client,
#   "my_collection",
#   query_embeddings = list(c(1.0, 0.0, 0.0)), # should match apple best
#   n_results = 2
# )

## ----eval=FALSE---------------------------------------------------------------
# # Update embedding separately
# update_documents(
#   client,
#   "my_collection",
#   ids = "doc1",
#   embeddings = list(c(0.9, 0.1, 0.0)) # slightly different from original apple
# )
# 
# # Delete documents
# delete_documents(client, "my_collection", ids = "doc2") # removes banana


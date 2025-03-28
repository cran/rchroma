% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/documents.R
\name{add_documents}
\alias{add_documents}
\title{Add Documents to a Collection}
\usage{
add_documents(
  client,
  collection_name,
  documents,
  ids,
  metadatas = NULL,
  embeddings = NULL,
  uris = NULL,
  tenant = "default_tenant",
  database = "default_database"
)
}
\arguments{
\item{client}{A ChromaDB client object}

\item{collection_name}{Name of the collection}

\item{documents}{List of documents to add}

\item{ids}{Vector of unique IDs for the documents (required)}

\item{metadatas}{List of metadata for each document (optional)}

\item{embeddings}{Optional pre-computed embeddings}

\item{uris}{Optional vector of URIs associated with the documents}

\item{tenant}{The tenant name (default: "default")}

\item{database}{The database name (default: "default")}
}
\value{
TRUE on success
}
\description{
Add Documents to a Collection
}

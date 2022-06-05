#' @export
create_image_html <- function(image_path) {
  cat(paste0("![](", image_path, ")"))
}

#' @export
render_image_html <- function(folder_path) {
  ls_file <- list.files(folder_path, full.names = TRUE)
  
  invisible(lapply(ls_file, create_image_html))
}

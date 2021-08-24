#' CompSnameCheck
#'
#' @description extract the Surname and First Name from Chinese Names, automatically checking and modifing the surname if it's a Chinese compound surname.
#'
#' @param data dataframe
#' @param name full Chinese name as a column inside data
#'
#' @return Dataframe with extra 2 columns: sname (Surname) and fname (First Name)
#' @export
#'
#' @examples
#' CompSnameCheck(data, name)
CompSnameCheck <- function(data, name){
  compound_snames <- '欧阳、太史、端木、上官、司马、东方、独孤、南宫、万俟、闻人、夏侯、诸葛、尉迟、公羊、赫连、澹台、皇甫、宗政、濮阳、公冶、太叔、申屠、公孙、慕容、仲孙、钟离、长孙、宇文、司徒、鲜于、司空、闾丘、子车、亓官、司寇、巫马、公西、颛孙、壤驷、公良、漆雕、乐正、宰父、谷梁、拓跋、夹谷、轩辕、令狐、段干、百里、呼延、东郭、南门、羊舌、微生、公户、公玉、公仪、梁丘、公仲、公上、公门、公山、公坚、左丘、公伯、西门、公祖、第五、公乘、贯丘、公皙、南荣、东里、东宫、仲长、子书、子桑、即墨、达奚、褚师、吴铭'
  compound_snames <- compound_snames %>%
    str_split('、') %>%
    .[[1]]
  data <- mutate(data,
                 sname = str_sub(name,1,1),
                 fname = str_sub(name,2,6),
                 sname_test = str_sub(name,1,2))
  nc <- ncol(data)
  for (i in 1:nrow(data)) {
    if (all(!str_detect(data[i,nc], compound_snames))) {
      data[i,nc-2] <-  str_sub(data[i,which(names(data)=='name')], 1,1)
      data[i,nc-1] <-  str_sub(data[i,which(names(data)=='name')], 2,6)
    } else {
      data[i,nc-2] <-  str_sub(data[i,which(names(data)=='name')], 1,2)
      data[i,nc-1] <-  str_sub(data[i,which(names(data)=='name')], 3,6)
    }
  }
  data <- data[,-nc]
  data
}

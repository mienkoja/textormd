textormd <- function(tex){
  library(png)
  library(RCurl)
  
  
  #define url for web service NOTE: png option 
  url <- "http://www.forkosh.com/mathtex.cgi?\\png "
  
  #combine url into one string for png creation 
  math_url <- paste0(url,tex)
  
  #replace spaces for proper url formation
  math_url <- gsub(pattern = " ", replacement = "%20", x = math_url)
  
  #create a target directory for the png
  dir.create(file.path("mathtex"), showWarnings = FALSE)
  
  #generate the png file 
  x <- postForm(uri = math_url)
  
  #convert tex to ASCII codes for file naming
  filename <- iconv(tex, "LATIN2", "ASCII", toRaw = TRUE)[[1]]
  filename <- paste0(filename, collapse="")
  
  #create a file name that is no more than 50 characters
  filename_min <- paste0(substring(text = filename
                                   ,first = 0
                                   ,last = 25)
                         ,substring(text = filename
                                    ,first = nchar(filename)-25
                                    ,last = nchar(filename))
  )
  
  filename <- ifelse(nchar(filename) > 50
                     ,filename_min
                     ,filename)
  
  
  filename <- paste0("mathtex/", filename, ".png")
  
  #write the png
  writePNG(readPNG(x), target = filename)
  
  #return a path for the markdown file to follow
  return(paste0("![](", filename, ")"))
}
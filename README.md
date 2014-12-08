textormd
========

**NOTE: This Function Has Not Been Well-Tested**

For individuals who are willing (or seeking) to edit github wikis from RStudio and wishing to add typeset math into the entries, `textormd()` is an R function for use with the [`knitr`](https://github.com/yihui/knitr/) package from @yihui. 

This function is an admittedly hackish workaround for the issue described [here](https://github.com/github/markup/issues/274), [here](https://github.com/gollum/gollum/issues/288), [here](http://stackoverflow.com/questions/11256433/how-to-show-math-equations-in-general-githubs-markdownnot-githubs-blog), and [here](http://stackoverflow.com/questions/12502440/markdown-formula-display-in-github). 

The entry in the wiki of this repo is the result of a markdown document generated from the `knit2html()` function available within `knitr` (as implemented in the RStudio IDE). As can be seen, the `textormd()` function can be used in conjunction with the `knitr` package to yield type set math text within the GitHub wiki environment. 

The function makes use of the `mathtex` web service described in more detail [here](http://www.forkosh.com/mathtex.html). Using the `textormd()` function, users should be able to 

1. Enter `mathtex` commands either inline or in code chunks within an R Markdown document as shown [here](A link to the raw Rmd file is available [here](https://raw.githubusercontent.com/mienkoja/textormd/master/rmd_example.Rmd), 

2. Compile that document to html (with `keep_md: yes` set in the preamble), 

3. PUSH the resulting markdown file and associated images to a wiki for a given repository (see the following [link](https://help.github.com/articles/adding-and-editing-wiki-pages-locally/) for information on how to edit a wiki locally), and

4. View all of the figures and `mathtex` images the wiki (or perhaps in the README) as shown [here](https://github.com/mienkoja/textormd/wiki/rmd_example). 

NOTE: A Double slash "\\\" is required for all `mathtex` functions. 

I don't intend for this to be a long-term solution. Just something to get me (or others) by until GitHub starts to support equation rendering again. 


#' @export
ourc <- setNames(c('#002a3a','#5E2750','#004153','#004f71','#008B95','#006A4D','#C1BB00','#F2AF00','#D2492A', '#0B88BA', "#420C00", '#7F493D'),
                 nm=c('darkblue','purple','darkblue2','darkblue3','lightblue','green','khaki','orange','red', 'skyBlue', 'blood','chocolate'))

#' theme_resolved
#'
#' Use this function with theme_set() to set a Resolved style theme for ggplot2
#' @param base_size: base font size, defaults to 12
#' @param base_family: base font family. Defaults to Lato, please use extrafont 
#' @keywords theme,ggplot2
#' @export
#' @examples
#' theme_set(theme_resolved)
theme_resolved <- function(base_size=12,base_family="Lato"){
  thm <- theme_bw(base_size=base_size,base_family=base_family)
  for (i in names(thm)) {
    if ("colour" %in% names(thm[[i]])) {
      thm[[i]]["colour"] <- list(NULL)
    }
    if ("fill" %in% names(thm[[i]])) {
      thm[[i]]["fill"] <- list(NULL)
    }
  }
  thm + theme(
    panel.border = element_rect(fill = NA,colour=NA),
    panel.background = element_rect(fill = NA),
    # grid
    panel.grid.major.x = element_line(colour = ourc['khaki'],linetype = 'dotted',size = 0.5),
    panel.grid.minor.x = element_line(colour = ourc['khaki'],linetype = 'dotdash', size = 0.3),
    panel.grid.major.y = element_line(colour = ourc['khaki'],linetype = 'dotted',size = 0.5),
    panel.grid.minor.y = element_line(colour = ourc['khaki'],linetype = 'dotdash', size = 0.3),
    # legend
    legend.background = element_rect(fill=NA,colour = NA),
    legend.position = "bottom",
    legend.title = element_text(family = 'Oswald Medium'),
    # axis
    axis.title = element_text(colour = ourc['darkblue'],family = 'Oswald Medium'),
    # facets
    strip.background = element_rect(fill = ourc['darkblue2']),
    strip.background.x = element_rect(fill = ourc['darkblue2']),
    strip.background.y = element_rect(fill = ourc['darkblue2']),
    # general
    strip.text = element_text(colour = 'white',family = 'Oswald Medium'),
    line = element_line(colour = NA),
    rect = element_rect(fill = "white", colour = NA),
    text = element_text(colour = ourc['darkblue']))
}

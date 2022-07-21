#mytheme
# source: https://github.com/GAEgeler/efz_1.23_klimabewusste_ernahrung/blob/main/R/config_plot.R


#for the most plots
mytheme <- ggplot2::theme_bw()+ # definve theme for plot
  ggplot2::theme(plot.title = ggplot2::element_text(size = 22, face = "bold"),
                 axis.text.x = ggplot2::element_text(size=22),
                 axis.text.y = ggplot2::element_text(size=22, face = "plain"),
                 legend.text = ggplot2::element_text(size = 22),
                 legend.title = ggplot2::element_text(size =22),
                 strip.text = ggplot2::element_text(size=22),
                 strip.background = ggplot2::element_rect(colour="black",
                                                          fill="grey90"), #background color for facet wraps
                 panel.spacing = ggplot2::unit(1, "lines"), # space between panels 
                 axis.title.y = ggplot2::element_text(size = 22, margin = ggplot2::margin(t = 0, r = 22, b = 0, l = 0)),
                 axis.title.x = ggplot2::element_text(size = 22,  margin = ggplot2::margin(t = 22, r = 0, b = 0, l = 0)),
                 plot.subtitle = ggplot2::element_text(margin = ggplot2::margin(b=15), size = 22),
                 plot.caption = ggplot2::element_text(margin = ggplot2::margin(t=15), face="italic", size=22),
                 text = ggplot2::element_text(family = ggplot2::theme_get()$text$family),
                 # legend.key = ggplot2::element_rect(color = "white", size = 6, fill = "white"), # see for that part the funktion draw_key_ploygon3
                 # legend.key.size = ggplot2::unit(1.5, "cm"),
                 legend.margin = ggplot2::margin(-0.5, 0, 0.05, 0, "cm"),
                 plot.margin = ggplot2::unit(c(t = 0, r = 0, b = 0, l = 0),"cm"))



#set coord expansion
#source: https://stackoverflow.com/questions/61969752/force-the-origin-to-start-at-0-without-margin-between-data-and-x-axis-in-new-ggp

scale_y_origin <- function(...) {
  ggplot2::scale_y_continuous(expand = ggplot2::expansion(mult = c(0, 0.02)), ...)
}
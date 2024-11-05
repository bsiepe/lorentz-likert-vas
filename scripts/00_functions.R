# ggplot theme ------------------------------------------------------------
# Create common theme for all plots
theme_bs <- function(){
  # add google font
  sysfonts::font_add_google("News Cycle", "news")
  # use showtext
  showtext::showtext_auto()
  
  # theme
  ggplot2::theme_minimal(base_family = "news") +
    ggplot2::theme(
      # remove minor grid
      panel.grid.minor = ggplot2::element_blank(),
      # Title and Axis Texts
      plot.title = ggplot2::element_text(face = "plain",
                                         size = 24,
                                         hjust = 0.5),
      plot.subtitle = ggplot2::element_text(size = 23,
                                            hjust = 0.5),
      axis.text.x = ggplot2::element_text(face = "plain", size = 22),
      axis.title.x = ggplot2::element_text(face = "plain", size = 22),
      axis.text.y = ggplot2::element_text(face = "plain", size = 22),
      axis.title.y = ggplot2::element_text(face = "plain", size = 22),
      axis.line = element_line(colour = "#6d6d6e"),
      
      # Faceting
      strip.text = ggplot2::element_text(face = "plain",
                                         size = 22,
                                         hjust = 0.5),
      strip.text.x.top = ggplot2::element_text(face = "plain", 
                                               size = 22,
                                               hjust = 0.5),
      # strip.text.y = element_blank(),
      strip.background = ggplot2::element_rect(fill = NA, color = NA),
      # Grid
      panel.grid = ggplot2::element_line(colour = "#F3F4F5"),
      # Legend
      legend.title = ggplot2::element_text(face = "plain"),
      legend.position = "top",
      legend.justification = 1,
      # Panel/Facets
      panel.spacing.x = ggplot2::unit(1.6, "lines"),
      panel.spacing.y = ggplot2::unit(1.6, "lines"),
      # Remove vertical grid lines
      panel.grid.major.x = ggplot2::element_blank()
      
    )
}


okabe_fill_enh <- ggokabeito::palette_okabe_ito(order = c(5,1,3,4,2,6,7,8,9))
okabe_color_enh <- ggokabeito::palette_okabe_ito(order = c(5,1,3,4,2,6,7,8,9))

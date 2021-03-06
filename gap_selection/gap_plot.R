# make function to plot lifeExp data for each country for specific continent
gap_plot <- function(data, cont) {
	data %>% 	mutate(country = fct_reorder(country, mean_lifeExp)) %>% 
		ggplot(aes(country, mean_lifeExp)) + 
		geom_point(colour = "hotpink") +
		labs(
			title = paste("Mean Life Expectancy in", cont),
			x = "",
			y = "Mean Life Expectancy (years)"
		) +
		theme_bw() +
		theme(axis.text = element_text(
			angle = 90,
			hjust = 1
		))
	ggsave(paste0(cont,"_plot.png"), path = paste0("./", cont)) # save as .png with name and directory depending on continent selection
}

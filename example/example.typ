#import "mnras.typ": *


// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Constraining galactic star formation histories using metallicity gradients and deep learning",
  shorttitle: "Common galaxies",
  authors: (
    (name: "Colin Jacobs", email: "colinjacobs@swin.edu.au", affiliations: (
      (name: "Swinburne University of Technology", postal: "P.O. Box 218, Hawthorn Vic 3022, Australia"), )
    ),
   (name: "Nadiya Astronomer-Person", email: "notreal@swin.edu.au", affiliations: (
      (name: "Swinburne University of Technology", postal: "P.O. Box 218, Hawthorn Vic 3022, Australia"), )
    ),
      
   (name: "Ludwig Zamenhof", email: "marc@uni.eo", affiliations: (
      (name: "Swinburne University of Technology", postal: "P.O. Box 218, Hawthorn Vic 3022 Australia"),
     (name: "University of Bialystok", postal: "ul. Świerkowa 20 B15-328 Białystok, Poland"))),
  ),
  // Insert your abstract after the colon, wrapped in brackets.
  // Example: `abstract: [This is my abstract...]`
  abstract: [Understanding the star formation histories of galaxies is crucial for unraveling the mysteries of the universe's evolution. However, reconstructing the detailed past star formation activity of galaxies poses a formidable challenge due to the complex interplay of various physical processes involved. In recent years, machine learning algorithms have emerged as powerful tools for analyzing large-scale astronomical datasets and extracting valuable insights. We find that for galaxies with a log mass between 9.5 and 11 $M_dot.circle$, the $alpha$-gradient is $2.5 plus.minus 0.5$.],
  date: "May 10, 2023",
  keywords: "Galaxies,Strong lensing,Statistical Methods"
)

= Introduction

Various machine learning algorithms, including deep learning architectures have been successfully applied to characterize galaxy star formation histories #cite("smith2021dark", "hawkins2019stellar", "roberts2018supernova"). We explore the use of diverse data sources, ranging from optical and infrared imaging to spectroscopic data, as inputs for machine learning models. Furthermore, we discuss the incorporation of additional features, such as galaxy morphology, stellar populations, and environmental factors, to enhance the accuracy and interpretability of the predictions.

There are many strategies for training machine learning models #cite("schneider2016extragalactic", "williams2020pulsars"), on star formation history data, including supervised, unsupervised, and semi-supervised learning approaches. We also address the importance of data augmentation techniques and the handling of uncertainties associated with observations.

#cite("liu2022exoplanets", brackets: false) present case studies highlighting the application of machine learning methods to real observational datasets, demonstrating their ability to infer star formation histories accurately and efficiently. We discuss the advantages and limitations of these approaches, as well as potential avenues for future research.

Overall, this paper emphasizes the immense potential of machine learning in unlocking the secrets of galaxy star formation histories. The integration of advanced data analysis techniques with extensive observational datasets promises to revolutionize our understanding of the processes shaping galaxies over cosmic time. By leveraging the power of machine learning, we can extract unprecedented insights into the intricate relationship between galaxies, their environments, and their star formation histories, ultimately leading to a more comprehensive understanding of the universe's evolution.


= Dataset <data>

#figure(caption: [A galaxy merger. This image is of course AI generated and completely fictional])[
  #image("galaxy.png")
]<galpic>

In @galpic, we see an image of a spiral galaxy merging with another galaxy, taken with the 8m Jacobs Telescope in Monto Malrealo, Iceland. 

== Correction for dust
@slow demonstrates what slow
software looks like.
$ O(n) = 2^n $ <slow>
$ x = -b plus.minus sqrt(b^2 - 4 a c)/(2a) $ <eq1>

Refer back to it as @eq1.

= Method
We highlight the advantages of ML techniques in providing accurate and precise estimates of galaxy SFHs, enabling a deeper understanding of galaxy formation and evolution. ML models offer the ability to capture complex non-linear relationships between observables and physical parameters, leading to improved characterization of stellar populations and identification of distinct evolutionary phases. Additionally, ML algorithms facilitate the handling of large datasets and the development of robust and automated pipelines for SFH inference.

Furthermore, we discuss the importance of careful data preprocessing, feature engineering, and model selection in ML-based SFH estimation. We also outline the challenges associated with interpretability, generalization, and the integration of physical priors into ML frameworks.

#columns(1, figure(caption: [Further examples of beautiful but made up galaxies.])[#image("gals2.png")])

Finally, we present a future outlook on the potential of ML techniques in advancing our understanding of galaxy formation and evolution. We discuss possible directions for further research, including the incorporation of additional data sources, refinement of ML architectures, and the development of hybrid approaches that combine physical models with ML algorithms.

In conclusion, the synergy between galaxy star formation histories and machine learning provides a promising avenue for unraveling the intricate processes governing the formation and evolution of galaxies. By leveraging the power of ML algorithms, we can unlock unprecedented insights into the cosmic journey of galaxies, paving the way for future breakthroughs in astrophysics and cosmology.

= Summary and Conclusions
#lorem(500)

#bibliography("bibliography.bib", style: "chicago-author-date")



#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(shinydashboard)


######
#####
####
###
## SHINY UI
ui <- fluidPage(
        dashboardPage(skin="blue", #tags$head(tags$link(rel="stylesheet", type="text/css", href="style.css")),
          dashboardHeader(title= "Healthy Cognitive Aging"),
            dashboardSidebar(
                  sidebarMenu(
                      menuItem("Background", tabName= "intro"),
                      menuItem("Cognitive tests", tabName = "tests"),
                      menuItem("Cognitive domains", tabName = "domains"),
                      menuItem("Summary", tabName = "summary"),
                      menuItem("About Me/References", tabName = "bio")
                              )
                             ),
            dashboardBody(
                  tags$head(tags$style(HTML(' p {font-family: "Optima"} main-title {font-family: "Optima"}
                                              h1 {font-family: "Optima"} h2 {font-family: "Optima"}
                                              h3 {font-family: "Optima"} h4 {font-family: "Optima"};'))),
                      tabItems(
                        tabItem(tabName="intro",
                                h1("Healthy Cognitive Aging"),
                                h3("Kana Kimura and Caitlin R. Bowman"),
                                h4("University of Wisconsin - Milwaukee"),
                                fluidRow(
                                        box(width=6,
                                          h2("What is healthy cognitive aging?"),
                                          p(strong("Healthy cognitive aging"), "is a term for the normal pattern of cognitive changes that typically starts around age 60-65. 
                                            It is important for us to understand the types of cognitive changes that are normal so that we notice 
                                            when someone surpasses those normal changes and may have an age-related dementia like Alzheimer’s Disease. 
                                            It is also important because healthy cognitive aging is the most common form of cognitive aging.", style = "font-size:25px"),
                                          br(),
                                          p("Here, we first define healthy cognitive aging in contrast to two types of pathological aging:", 
                                            strong("Alzheimer’s Disease"), "and", strong("Mild Cognitive Impairment"),". 
                                            We then describe some of the tools that researchers and clinicians use to determine 
                                            whether someone may be experiencing pathological aging. 
                                            Lastly, we describe tools for assessing normal cognitive change and what those tools have shown us about how older age affects cognition.",
                                            style = "font-size:25px")
                                        ),
                                        box(width=6,
                                          h2("Distinguishing between healthy and pathological cognitive aging"),
                                          p("Some cognitive abilities may decline in healthy aging (Blazer et al., 2015, Harada et al. 2013), 
                                            but the decline is not universal across all abilities, 
                                            and the degree of decline is not severe enough to require medical intervention. 
                                            Healthy cognitive aging contrasts with", strong("Alzheimer’s Disease and Related Dementias (ADRD)"), 
                                            "and with", strong("Mild Cognitive Impairment (MCI)"), "(Gu et al., 2014; Insel et al., 2016).", style = "font-size:25px"),
                                          br(),
                                          p("ADRD is the most common form of dementia, and it is caused by brain changes that include 
                                            accumulation of abnormal proteins and degeneration of neurons (Braak, 2011; Jack et al., 2009; Villemagne et al., 2013). 
                                            It is characterized by progressive and severe decline in cognitive function 
                                            that eventually leaves individuals unable to complete daily tasks and care for themselves (Laver et al., 2016).", style = "font-size:25px"),
                                          br(),
                                          p("MCI is the stage between healthy aging and dementia, 
                                            characterized by greater loss of memory function 
                                            than is typical but otherwise normal cognitive function and activities of daily life (Petersen et al., 1999).", style = "font-size:25px"),
                                          br(),
                                          p("Compared to those with MCI and ADRD, 
                                            those experiencing healthy cognitive aging report higher overall quality of life (Bárrios et al., 2013; Neumann et al., 1999) 
                                            and can often maintain an independent lifestyle.", style = "font-size:25px")
                                        )
                                          )
                                ),
                        tabItem(tabName= "tests",
                                h2("Neuropsychological measures"),
                                fluidRow(
                                  box(width=12, 
                                      h2("How do we know who is experiencing healthy cognitive aging vs. who may have MCI or ADRD?"),
                                      p("Because some amount of age-related cognitive decline is normal, 
                                        it can sometimes be difficult to tell when a friend or family member is showing signs of pathological aging. 
                                        Further, treatments tend to be more fruitful at early stages of a disease, 
                                        so it can help to detect a potential ADRD when the symptoms are still relatively subtle. 
                                        Neuropsychological measures have been developed to distinguish healthy from pathological aging.", style = "font-size:25px")
                                  )
                                ),
                                fluidRow(
                                    tabBox(width=12,
                                         tabPanel("MMSE", style = "font-size:25px", 
                                                  fluidRow(
                                                    box(width=6,
                                                        h2("What is this test used for?"),
                                                        p(strong("The Mini-Mental State Examination (MMSE)"), "is commonly used to test for cognitive impairment 
                                                          and to detect signs of dementia. It is also used to evaluate the cognitive status of patients
                                                          with traumatic brain injury (de Guise et al., 2013). ")
                                                        ),
                                                    box(width=6,
                                                        h2("What does it look like?"),
                                                        p("11 questions assessing several cognitive domains"),
                                                        br(),
                                                        p(em("examples")),
                                                        p("Q. What is today's date? What is current season? Where are you now?"),
                                                        p("- testing oritentaion"),
                                                        br(),
                                                        p("Q. I will say three words. When I am through, repeat them back to me: 
                                                          Orange, phone, chair. Keep those words in mind because we will ask you to repeat them back again soon."),
                                                        p("-testing recall memory")
                                                        ),
                                                    box(width=6, background="light-blue",
                                                        h2("advantages"),
                                                        p("1. easy set-up"),
                                                        p("2. short duration (takes <10 minutes)"),
                                                        p("3. No expensive equipment needed"),
                                                        p("4. No specialized training")
                                                        ),
                                                    box(width=6, background="red",
                                                        h2("disadvantages"),
                                                        p("1. low score does not necessarily mean that an individual has dementia"),
                                                        p("2. need to interpret other factors such as physical disabilities, education,
                                                          languages, and cultural differences when interpreting the score")
                                                        )
                                                    )
                                                  ),
                                         tabPanel("MoCA", style = "font-size:25px",
                                                  fluidRow(
                                                    box(width=6,
                                                        h2("What is this test used for?"),
                                                        p(strong("The Montreal Cognitive Assessment (MoCA)"), "is a cognitive assessment used to 
                                                          differentiate healthy cognitive aging from mild cognitive impairment (MCI) (Narseddine et al., 2005).")
                                                    ),
                                                    box(width=6,
                                                        h2("What does it look like?"),
                                                        p("contain 30 questions"),
                                                        br(),
                                                        p(em("examples")),
                                                          p("Q. Can you draw an apple on a tree?"),
                                                          p("- testing visuospatial and executive abilities"),
                                                          br(),
                                                          p("Q. Can you read the list of numbers below and tap your hands when you read number 3?"),
                                                          p(strong("1 9 7 4 2 9 0 2 3 5 9 1")),
                                                          p("- testing attention")
                                                        ),
                                                    box(width=6, background="light-blue",
                                                            h2("advantages"),
                                                            p("1. very sensitive to detecting the transitional phase between healthy and pathological cognitive aging (Ciesielska et al., 2016; Tsoi et al., 2015)"),
                                                            p("2. No expensive equipment needed"),
                                                            p("3. No specialized training")
                                                        ),
                                                    box(width=6, background="red",
                                                            h2("disadvantages"),
                                                            p("1. low score is not sufficient to diagnose MCI or dementia"),
                                                            p("2. it takes longer to administer (>10 minutes)")
                                                        )
                                                    )
                                                  ),
                                         tabPanel("WAIS-IV", style = "font-size:25px",
                                                  fluidRow(
                                                    box(width=12,
                                                        p("Even among cognitively healthy people, cognitive abilities can differ substantially. 
                                                          One person may perform exceptionally well on some cognitive tasks 
                                                          while others may perform close to average. How do we know how an individual’s cognitive abilities 
                                                          compare to others in the general population? ")
                                                    ),
                                                    box(width=6,
                                                        h2("What is this test used for?"),
                                                        p(strong("The Wechsler Adult Intelligence Scale, Fourth Edition (WAIS-IV"),"; Wechsler, 2008a; Wechsler, 2008b) 
                                                                 is an assessment of wide-ranging cognitive abilities.")
                                                    ),
                                                    box(width=6,
                                                        h2("What does it look like?"),
                                                        p("composite scores in 4 cognitive areas:"),
                                                        p(strong("1. Verbal comprehension")),
                                                        p(strong("2. perceptual reasoning")),
                                                        p(strong("3. working memory")),
                                                        p(strong("4. processing speed")),
                                                        br(),
                                                        p("Each of these abilities is measured through 2-3 subtests."),
                                                        p("Each test starts at a relatively ‘easy’ level in which most people can answer correctly. 
                                                          Each test gets progressively more difficult, and the examiner stops when the participant no longer answers correctly
                                                          or when the end of the test is reached."),
                                                        p("***We will review aforementioned 4 cognitive domains in the next page***", style = "font-size:35px")
                                                        ),
                                                    box(width=6, background="light-blue",
                                                          h2("advantages"),
                                                          p("1. It is a comprehensive assessment, testing cognitive domains not measured in short assessments
                                                            like MMSE or MoCA"),
                                                          p("2. Each score can be standardized to quantify how typical an individual’s score is for their age group.
                                                            The four WAIS-IV components can also be added to derive an overall IQ score. ")
                                                        ),
                                                    box(width=6, background="red",
                                                          h2("disadvantages"),
                                                          p("1. needs extensive training to administer"),
                                                          p("2. it takes longer to administer (apx. 1 hour)")
                                                        )
                                                    )
                                                  )
                                         )
                                ),
                                fluidRow(
                                  box(width=12,
                                      img(src="neuropsychological_test_table.PNG", width="100%", height="100%")
                                  )
                                ),
                                         ),
                        tabItem(tabName= "domains",
                                h2("Cognitive Aging in 4 domains"),
                                fluidRow(
                                  tabBox(width=12,
                                         tabPanel("Processing Speed", style = "font-size:25px",
                                          fluidRow(
                                            box(width=5,
                                              h2("WAIS-IV subtests for assessing processing speed"),
                                              img(src="symbol_search.PNG", width="100%", height="100%"),
                                              helpText("A. In the Symbol Search test, 
                                                        items are presented sequentially in a row. In each row, two target symbols are presented to the left, 
                                                        and a set of five symbols and a “NO” box are presented to the right. 
                                                        Examinees are asked to search for the matched item to the target symbol.
                                                        If there is a matched item, they draw a line on it. If there is no matched item, they mark on “NO” box."),
                                              br(),
                                              img(src="coding.PNG", width="100%", height="100%"),
                                              helpText("B. In the Digit-Symbol Coding test, examinees match symbols to numbers according to a key. 
                                                        They are instructed to copy the symbol into boxes below a row of numbers varying from 0-9. 
                                                        For both tests, examinees complete as many items as they can in 2 minutes.")
                                            ),
                                        box(width=7,
                                          h2("What is it?"),
                                             p("Processing speed is the time it takes for an individual to perform a cognitive task - 
                                               the speed in which an individual comprehends and reacts to information they receive. 
                                               There are two WAIS-IV subtests of processing speed: Symbol Search and Digit-Symbol Coding. 
                                               For both processing speed tests, participants perform under a time limit and are asked to do the task as quickly as they can 
                                               without making mistakes. Their scores are based on how many items they complete in the allotted time, 
                                               accounting for any errors they make"),
                                          br(),
                                          h2("Findings in Healthy Cognitive aging"),
                                            p("One of the most robust findings in healthy cognitive aging is that older adults tend to respond more slowly than young adults, 
                                              even on tasks where they are performing equally well in terms of accuracy (Ghisletta et al., 2012; Park et al., 2002; Ryan et al., 2000; Salthouse, 1998). 
                                              Declines in processing speed may underlie many other cognitive deficits because slowing disrupts the synchrony among cognitive processes. 
                                              Imagine a factory where one machine is running slower than the rest - component parts cannot be delivered at the right time, 
                                              having downstream effects in the overall ability to make a product efficiently. 
                                              That may be similar to how cognitive slowing can lead to poorer cognitive performance in older adults. 
                                              Consistent with that idea, age-related slowing becomes stronger as the complexity of cognitive tasks increases (Salthouse & Ferrer-Caja, 2003). 
                                              Declining processing speed also has real-world impacts: decline in processing speed is a major risk factor for accidents and death associated with driving in older adults (Edwards et al., 2010).")
                                  )
                                )
                                  ),
                                tabPanel("Working Memory", style = "font-size:25px",
                                  fluidRow(width=6,
                                    box(width=5,
                                        h2("WAIS-IV subtests for assessing working memory"),
                                        img(src="digit_span.PNG", width="100%", height="100%"),
                                        helpText("A. Across three phases of the Digit Span test, the examiner reads digits aloud and the examinee repeats them back in forward order, 
                                                 in backward order, or rearranges the numbers to be in sequential order."),
                                        br(),
                                        img(src="arithmetic.PNG", width="75%", height="75%"),
                                        helpText("B. In the Arithmetic test, the examiner reads math problems aloud and the examinee answers them using mental math.")
                                        ),
                                    box(width=7,
                                        h2("What is it?"),
                                        p("Working memory is the ability to remember information over short periods of time, 
                                          typically on the order of seconds or tens of seconds (Angelopoulou & Drigas, 2021; Bhandari & Badre, 2016; Oberauer, 2019). 
                                          For example, we need working memory to keep a set of numbers in mind while we perform mental math or keep a grocery list in mind while we shop.
                                          There are two WAIS-IV subtests: Digit Span and Arithmetic. There are three versions of the Digit Span test. 
                                          All versions start with the examiner reading a series of digits aloud. Depending on the version, 
                                          the examinee either repeats the digits back in the exact same order, in reverse order, 
                                          or rearranges them to be in order from the lowest number to highest number. 
                                          For Arithmetic, participants are asked to solve arithmetic word problems without the use of a pen and paper."),
                                        br(),
                                        h2("Findings in Healthy Cognitive aging"),
                                        p("Research shows that working memory abilities decline in healthy aging (Bopp & Verhaeghen, 2005; Salthouse et al., 1989; Schneider-Garces et al., 2010). 
                                          For example, in the aforementioned Digit Span tasks, older adults tend to perform about as well as young adults on the Digit Span forward that involves simply repeating back digits in the same order. 
                                          However, age-related deficits in performance arise for versions of the task that involve mentally re-ordering the digits (Brown, 2016; Wiegersma & Meertse, 1990). 
                                          This is explained by older adults’ tendency to perform worse when the complexity of tasks increases, 
                                          such as when there are more pieces of information to remember or when the information needs to be manipulated in some way. 
                                          These findings have led to the conclusion that older adults have a lower working memory capacity than young adults (Iordan et al., 2020; Salthouse et al., 1989; Schneider-Garces et al., 2010). ")
                                        )
                                  )
                                      ),
                                  tabPanel("Perceptual Reasoning", style = "font-size:25px",
                                           fluidRow(
                                             box(width=5,
                                                 h2("WAIS-IV subtests for assessing perceptual reasoning"),
                                                 img(src="block_design.PNG", width="75%", height="75%"),
                                                 helpText("A. . In Block Design, the examinee uses colored blocks to recreate a pattern shown by the examiner."),
                                                 br(),
                                                 img(src="matrix_reasoning.PNG", width="100%", height="100%"),
                                                 helpText("B. In Matrix Reasoning, the examinee picks which of six options would continue or complete a pattern."),
                                                 br(),
                                                 img(src="visual_puzzles.PNG", width="100%", height="100%"),
                                                 helpText("C. In Visual Puzzles, the examinee picks three of six shapes that could be combined to look like a pattern shown by the examiner.")
                                             ),
                                             box(width=7,
                                                 h2("What is it?"),
                                                 p("Perceptual reasoning is the ability to take in information and accurately interpret, organize, and find patterns in the received information. There are three WAIS-IV subtests that measure perceptual reasoning: Block Design, Matrix Reasoning, and Visual Puzzles. 
                                                   In Block Design, examinees are presented with blocks having different colored patterns and asked to use them to recreate patterns provided by the examiner. 
                                                   In Matrix Reasoning, examinees are given a partial pattern made up of colored shapes and are asked to indicate which of a set of pieces completes the visual pattern. 
                                                   For Visual Puzzles, the examiner provides a test figure, and examinees pick three pieces that could be combined to recreate the test figure."),
                                                 br(),
                                                 h2("Findings in Healthy Cognitive aging"),
                                                 p("Perceptual reasoning abilities tend to decline with age (Mapstone et al., 2003; Rattanavichit et al., 2022). 
                                                   A study investigating age-related differences in WAIS subtests found that scores on Matrix Reasoning reach their highest level at the age of 16 to 17 
                                                   and start declining at midlife (Ryan et al., 2000). Together with processing speed and working memory, 
                                                   perceptual reasoning is part of what is known as", strong("‘Fluid Intelligence’"),
                                                   ": the ability to comprehend and learn new information and apply effortful reasoning processes (Tucker-Drob et al., 2022). 
                                                   Fluid abilities tend to decrease with age (Baltes et al., 1999; Lindenberger, 2001), 
                                                   which some have attributed to impaired vision and hearing in older adults (Peelle & Wingfield, 2016; Uchida et al., 2019) 
                                                   that reduces the quality of sensory information that older adults can use to support fluid reasoning (Roberts & Allen, 2016). 
                                                   Others suggest that Fluid Intelligence declines in older age because older adults are more susceptible to being distracted by information that is not relevant for the task at hand (Hasher & Zacks, 1988). 
                                                   Though there are some controversies in the underlying mechanisms of this cognitive change, 
                                                   fluid abilities are often reported to decrease as people age. ")
                                             )
                                         )
                                           ),
                                           tabPanel("Verbal Comprehension", style = "font-size:25px",
                                                    fluidRow(
                                                      box(width=5,
                                                          h2("WAIS-IV subtests for assessing verbal comprehension"),
                                                          img(src="similarities.PNG", width="75%", height="75%"),
                                                          helpText("A. In the Similarities test, the examinee identifies a commonality between two items named by the examiner."),
                                                          br(),
                                                          img(src="vocabulary.PNG", width="75%", height="75%"),
                                                          helpText("B. In the Vocabulary test, the examinee defines words named by the examiner."),
                                                          br(),
                                                          img(src="information.PNG", width="75%", height="75%"),
                                                          helpText("C. In the Information test, the examinee answers general knowledge questions asked by the examiner.")
                                                      ),
                                                      box(width=7,
                                                          h2("What is it?"),
                                                          p("Verbal comprehension is a measure of semantic memory, which is an individual’s level of general world knowledge and language abilities. 
                                                   It is measured by three WAIS-IV subtests: Similarities, Vocabulary, and Information.
                                                   In Similarities, the participant is asked to find a similarity between two words. 
                                                   For example, a similarity between Jamaica and Japan is that they are both island countries, 
                                                   and both winter and summer describe seasons. Vocabulary tests a participant’s ability to define words by asking them what words like “orange” and “modify” mean. 
                                                   Lastly, Information consists of general knowledge questions asking about facts from domains such as geography, science, and history. 
                                                   The examiner asks questions like “Who was the first woman to win a Nobel Prize?” and “On what continent is Spain?” 
                                                   Together, these subtests provide information about an individual’s level of factual and conceptual knowledge, 
                                                   which is sometimes termed", strong("‘Crystallized Intelligence’"), "as a counterpoint to Fluid Intelligence"),
                                                          br(),
                                                          h2("Findings in Healthy Cognitive aging"),
                                                          p("Verbal comprehension shows less age-related decline compared to Fluid Intelligence measures and sometimes even shows improvement in older age (Cunningham et al., 1975; Horn & Cattell, 1967; Kaufman et al., 1989; Luo & Craik, 2008). 
                                                   Older adults’ lifetime of experience may help build up a great deal of knowledge, 
                                                   most of which is retained even as fluid abilities begin to decline. Even when age deficits in semantic memory are observed, 
                                                   they may be the result of differences in educational attainment between groups of younger and older people rather than due to the aging process itself, 
                                                   with older generations having less access to higher education that tends to promote general knowledge (Nyberg et al., 1996). 
                                                   Declines in processing speed and sensory acuity may sometimes pose a challenge for older adults’ abilities to understand and/or produce language, 
                                                   but older adults are often able to use context and their wide variety of background knowledge to overcome some of these challenges (Lash et al., 2013; Milburn et al., 2023; Payne & Silcox, 2019). 
                                                   These and related findings have led some to suggest that healthy older adults may be able to use Crystallized Intelligence to compensate for other cognitive deficits (Badham et al., 2016; Mohanty et al., 2016; Umanath & Marsh, 2014).")
                                                    )
                                                  )
                                                )
                                  )
                                )
                        ),
                        tabItem(tabName = "summary",
                                h2("Healthy Cognitive Aging Summary"),
                                fluidRow(
                                box(width=12,
                                    p("Healthy cognitive aging is a form of aging that is distinguishable from pathological aging. 
                                    Healthy aging preserves the ability to perform many mental processes like learning, decision-making, 
                                    language comprehension and production, and remembering, 
                                    albeit sometimes at lower levels of performance than healthy young adults. 
                                    Some cognitive domains such as processing speed or Fluid Intelligence are more affected by age, 
                                    while others such as Crystalized Intelligence tend to be comparable to or better than those of young adults. 
                                    Being on a healthy aging trajectory is a critical positive predictor of quality of life (Mol et al., 2007). 
                                    It is very important to know which cognitive domains are most affected by age in order to improve interventions to slow cognitive aging and support older adults in living healthy, 
                                    independent lives.", style = "font-size:25px")
                                )
                        )
                        ),
                            tabItem(tabName = "bio",
                                fluidRow(
                                  box(width=12,
                                    h2("Want to know more?"),
                                    p("Go to the pupblication section on", a(href="http://www.cabilab-uwm.com", "Cognitive Aging and Brain Imaging Lab website"), 
                                      "to read published journal articles about our current studies investigating cognitive aging.", style = "font-size:25px"),
                                    p(strong("**If you are younger or older adults who are insterested in participating in our studies, 
                                             Please feel free to contact us through the website!**"), style = "font-size:25px"),
                                    br(),
                                    p("For the source code of this RShiny app see my github repository", a(href="https://github.com/kana-kimura/shiny_app", "here."), style = "font-size:20px")
                                  )
                                ),
                                fluidRow(
                                  box(width=9,
                                      h2("About me"),
                                      p("I graduated with my BA from Stony Brook University in 2017 with a degree in Psychology. 
                                        In 2023, I received my MS and am currently a dissertator in Psychology department with a focus on Cognitive Neuroscience
                                        at the University of Wisconsin-Milwaukee (UWM)
                                        under the supervision of Dr. Caitlin Bowman.", style = "font-size:25px"),
                                      p("I am interested in both healthy cognitive aging and pathological aging including Alzheimer's disease related dementias.
                                        I have experience analyzing behavioral imaging data.
                                        I am proficient in a wide variety of statistical methods, coding, and scripting and
                                        am soon going to be in a job market pursuing a career as a postdoctoral researcher.", style = "font-size:25px"),
                                      p("Outside of my professional life, I enjoy spending time with friends playing board games and going to trivia at bars,
                                        visiting my family in Japan, or going to the dog park with my husky Ace :).", style = "font-size:25px")
                                  ),
                                  box(width=3,
                                      img(src="pic_with_Ace.png", width="100%", height="100%")
                                      )
                                ),
                                fluidRow(
                                  box(width=12,
                                      h3("(Some) References"),
                                      p("For a complete list of references, download a written version of Healthy Cognitive Aging", downloadLink("pathway_PDF", "here."), style = "font-size:20px"),
                                      p("1. Blazer, D. G., Yaffe, K., & Karlawish, J.. (2015). Cognitive Aging. JAMA, 313(21), 2121.
                                        https://doi.org/10.1001/jama.2015.4380"),
                                      p("2. Insel, P. S., Mattsson, N., Mackin, R. S., Schöll, M., Nosheny, R. L., Tosun, D., Donohue, M. C.,
                                        Aisen, P. S., Jagust, W. J., & Weiner, M. W.. (2016). Accelerating rates of cognitive decline and imaging markers associated with β-amyloid pathology. Neurology, 86(20), 1887–1896. https://doi.org/10.1212/wnl.0000000000002683"),
                                      p("3. Laver, K., Dyer, S., Whitehead, C., Clemson, L., & Crotty, M.. (2016). Interventions to delay 
                                        functional decline in people with dementia: a systematic review of systematic reviews. BMJ open, 6(4), e010767. https://doi.org/10.1136/bmjopen-2015-010767"),
                                      p("4.Ciesielska, N., Sokołowski, R., Mazur, E., Podhorecka, M., Polak-Szabela, A., & Kędziora Kornatowska, K.. (2016). 
                                      Is the Montreal Cognitive Assessment (MoCA) test better suited than the Mini-Mental State Examination (MMSE) in mild cognitive impairment (MCI) detection among people aged over 60? Meta-analysis. Psychiatr Pol, 50(5), 1039-1052.
                                      https://doi.org/10.12740/PP/45368"),
                                      p("5.Angelopoulou, E., & Drigas, A.. (2021). Working memory, attention and their relationship: A 
                                      theoretical overview. Research, Society and Development, 10(5), e46410515288. https://doi.org/10.33448/rsd-v10i5.15288"),
                                      p("6. Brown, L. A. (2016). Spatial-sequential working memory in younger and older adults: Age predicts backward recall performance within both age groups. Frontiers in Psychology, 7. https://doi.org/10.3389/fpsyg.2016.01514"),
                                      p("7. Iordan, A. D., Cooke, K. A., Moored, K. D., Katz, B., Buschkuehl, M., Jaeggi, S. M., Polk, T. A., Peltier, S. J., Jonides, J., & Reuter-Lorenz, P. A. (2020). Neural correlates of working memory training: Evidence for plasticity in older adults. NeuroImage, 217. https://doi.org/10.1016/j.neuroimage.2020.116887"),
                                      p("8. Rattanavichit, Y., Chaikeeree, N., Boonsinsukh, R., & Kitiyanant, K.. (2022). The age differences and effect of mild cognitive impairment on perceptual-motor and executive functions. Frontiers in Psychology, 13. https://doi.org/10.3389/fpsyg.2022.906898"),
                                      p("9. Tucker-Drob, E. M., de la Fuente, J., Köhncke, Y., Brandmaier, A. M., Nyberg, L., & Lindenberger, U.. (2022). A strong dependency between changes in fluid and crystallized abilities in human cognitive aging. Science Advances, 8(5), 1–11. https://doi.org/10.1126/sciadv.abj2422"),
                                      p("10. Uchida, Y., Sugiura, S., Nishita, Y., Saji, N., Sone, M., & Ueda, H. (2019). Age-related hearing loss and cognitive decline - The potential mechanisms linking the two. Auris, nasus, larynx, 46(1), 1–9. https://doi.org/10.1016/j.anl.2018.08.010"),
                                      p("11. Roberts, K. L., & Allen, H. A. (2016). Perception and Cognition in the Ageing Brain: A Brief Review of the Short- and Long-Term Links between Perceptual and Cognitive Decline. Frontiers in aging neuroscience, 8, 39. https://doi.org/10.3389/fnagi.2016.00039")
                                      
                                      ) #box
                                ) #fluidRow
                        ) #tabItem
                      ) #tabitems
                    ) #dashboard body
  ) #dashboardpage
) #fluidpage





                       




######
#####
####
###
##
# SHINY SERVER
server <- function(input, output) {
output$pathway_PDF <- downloadHandler(
  filename="pathway.pdf",
  content=function(file){
    file.copy("www/pathway.pdf", file)
  }
)


}

# Run the application 
shinyApp(ui = ui, server = server)
#runApp("CW_Dissertation_ShinyApp")

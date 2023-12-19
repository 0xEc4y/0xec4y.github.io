import nimib, nimislides # nimib/nimislides uses Markdown by default
import std/strformat, std/strutils, std/random, system
# import niml [html DSL]

randomize()

# TITLE: Are Viruses still a thing?

nbInit(theme = revealTheme)
setSlidesTheme(Blood)
showSlideNumber()
useScrollWheel()
footer(fmt("[home](https://ec4y.dev) - [jobs@ec4y.dev (work)](mailto:jobs@ec4y.dev) - [mail@ec4y.dev (personal/all)](mailto:mail@ec4y.dev) - [twitter](https://twitter.com/0xec4y)"))

## WHAT IS A VIRUS? HOW DO I GET ONE? HOW CAN I AVOID IT? THANKS.

# Highlight Colors
var virusHighlight = "#00FF08"
var malwareHighlight = "#FD5916"
var stdHighlight = "#F380FF"

# BACKGROUNDS SET AS VARIABLES HERE TO REDUCE BOILERPLATE

# Define elements of random background gradients
let 
    prefixes = ["linear", "radial"]
    primaryColors = ["#04D70D", "#04D70D", "#6904A5", "#FF0007", "#A81AC0", "#F64A29", "#125E3E", "#F7FF00", "#00F7FF", "#F800FF", "#000000", "#10D0C5"]
    secondaryColors = ["black", "white", "grey", "#D9A8A8", "#A8D9B2", "#44405F", "#9C9CCC", "#5B2757", "#83E5FF", "#913F24", "#862200", "#9DFF9B"]
# string to get random gradient every time file is recompiled
# Rand Gradients = &"{prefixes[find(prefixes, sample(prefixes))]}-gradient({primaryColors[find(primaryColors, sample(primaryColors))]}, {secondaryColors[find(secondaryColors, sample(secondaryColors))]})"

# image backgrounds
let
    firstImage = "backgrounds/virus.gif"


# First Level Indentation - Creates new slide entirely
slide(slideOptions(gradientBackground= &"{prefixes[find(prefixes, sample(prefixes))]}-gradient({primaryColors[find(primaryColors, sample(primaryColors))]}, {secondaryColors[find(secondaryColors, sample(secondaryColors))]})")):
    # Second Level Indentation - anything here and beyond will be a sub-slide.
    slide(slideOptions(imageBackground=firstImage)): # CREATE VIRUS VIDEO AND TURN INTO GIF LATER.  
        align("left"):
            nbText: "#### <span style=\"color:black\"> I'm sure you've heard of a computer virus and imagine something like this. 👆</span>"
            columns:
                column:
                    nbText: "<span style=\"color:black\"> You're probably wondering if this still exists? Has Apple just made a Virus proof computer?</span>"
                column:
                    nbText: "<span style=\"color:black\">I will try to answer all of your questions in these slides.</span>"
    slide:
        nbText: "Some slides will need to explain more, so keep clicking down until you can't. There is a number by the navigator that shows your slide number."

slide(slideOptions(gradientBackground= &"{prefixes[find(prefixes, sample(prefixes))]}-gradient({primaryColors[find(primaryColors, sample(primaryColors))]}, {secondaryColors[find(secondaryColors, sample(secondaryColors))]})")):
    slideAutoAnimate:
        nbText: fmt("## What is a <span style=\"color:{virusHighlight}\">Virus</span>?") ## ON LAST SLIDE MENTION DO MACS/MOBILE DEVICES GET MALWARE.
        fragment(fadeDown):
            nbText: fmt("A <span style=\"color:{virusHighlight}\"> virus </span> is a type of <span style=\"color:{malwareHighlight}\"> *malware* </span> that attaches to another program and replicates itself on execution, like a [virus](https://en.wikipedia.org/wiki/Virus) multiplies in your body.")

    slide:
        nbText: fmt("## Wait, <span style=\"color:{malwareHighlight}\"> *malware??* </span>??")
        fragment(fadeDown):
            nbText: fmt("<span style=\"color:{malwareHighlight}\"> **Malware** </span>, or *malicious-software* is a term that describes any program that was <span style=\"color:{stdHighlight}\"> intentionally written to cause malice</span>.")
            fragment:
                nbText: fmt("<span style=\"color:{stdHighlight}\"> *Malice* </span> could mean a lot of things, but it's commonly used to <span style=\"color:{stdHighlight}\"> make money off you </span> (steal your personal information), <span style=\"color:{stdHighlight}\"> stop your ability to do a job</span>, or <span style=\"color:{stdHighlight}\"> to make a political statement</span>.")
    slide:
        nbText:fmt("But if the average person like you or I had <span style=\"color:{malwareHighlight}\"> malware</span>, they'd be after our <span style=\"color:{stdHighlight}\"> money</span>. Nobody is looking to make a **political statement** with the stuff we're trying to hide.")

slide(slideOptions(gradientBackground= &"{prefixes[find(prefixes, sample(prefixes))]}-gradient({primaryColors[find(primaryColors, sample(primaryColors))]}, {secondaryColors[find(secondaryColors, sample(secondaryColors))]})")):
    slideAutoAnimate:
        nbText: fmt("#### How do I get <span style=\"color:{malwareHighlight}\">malware</span>? How do I know if I already have it?")
        fragment(fadeDown):
            nbText: fmt("You get infected with <span style=\"color:{malwareHighlight}\">malware</span> when you download a file (<span style=\"color:{stdHighlight}\">with or without your knowledge</span>) and it's malicious.")

            fragment:
                nbText: fmt("There isn't one way to know if you have malware. Usually it will start some <span style=\"color:{stdHighlight}\"> *weird*  behavior on your desktop</span>, <span style=\"color:{stdHighlight}\">or more resourses used at rest </span>(CPU, Memory, GPU Power).")
                fragment:
                    nbText: fmt("**But this is not always the case!! Sometimes <span style=\"color:{malwareHighlight}\">malware</span> can conceal itself very well, <span style=\"color:{stdHighlight}\">[asymptomatic](https://en.wikipedia.org/wiki/Asymptomatic)</span> in a sense.**")

    slide:
        nbText: fmt("some examples or some shit")

slide(slideOptions(gradientBackground= &"{prefixes[find(prefixes, sample(prefixes))]}-gradient({primaryColors[find(primaryColors, sample(primaryColors))]}, {secondaryColors[find(secondaryColors, sample(secondaryColors))]})")):
    slide:
        nbText: fmt("#### How do I avoid <span style=\"color:{malwareHighlight}\">malware</span>? How can I tell if a program is <span style=\"color:{malwareHighlight}\">malware</span>?")
        fragment(fadeDown):
            nbText: fmt("You can avoid <span style=\"color:{malwareHighlight}\">malware</span> by thinking twice about the links and redirects you click on!")
    slide:
        nbText: fmt("#### <span style=\"color:{stdHighlight}\"> If it's too good to be true, it is!!!! </span>")
        fragment:
            nbText: fmt("<span style=\"color:{stdHighlight}\">No</span>, you can't download Minecraft for free from freemcdownload.er")
            fragment:
                nbText: fmt("<span style=\"color:{stdHighlight}\">No</span>, those Valorant and CS cheats you saw on tiktok are not safe.")
                fragment: 
                    nbText: fmt("If you download some shady things like this and start experiencing weird behavior on your computer, <span style=\"color:{stdHighlight}\">that program could've been</span> <span style=\"color:{malwareHighlight}\"> malware</span>.")
    slide:
        nbText: fmt("Clicking on something is not the only way to be infected, but for the average person it covers 95% of malware we will experience.")
        fragment:
            nbText: fmt("## <span style=\"color:{stdHighlight}\">Protect yourself</span><span style=\"color:red\">!</span>")
            nbText: fmt("Go down for examples ⬇️ (use code blocks)")

slide(slideOptions(gradientBackground= &"{prefixes[find(prefixes, sample(prefixes))]}-gradient({primaryColors[find(primaryColors, sample(primaryColors))]}, {secondaryColors[find(secondaryColors, sample(secondaryColors))]})")):
    slide:
        nbText: fmt("#### How to remove <span style=\"color:{malwareHighlight}\">malware</span>.")
        fragment:
            columns:
                column:
                    nbText: fmt("<br>There are a few ways to remove <span style=\"color:{malwareHighlight}\">malware</span>, including (<span style=\"color:{stdHighlight}\">but not limited to</span>).")
                column:
                    nbText: fmt("<br>1. \"Anti-Virus\" or Anti-Malware suites <br>2. Formatting your physical drive<br>3. Running a Windows Defender scan.")

    slideAutoAnimate:
        nbText: fmt("#### The next few slides will load an interactive webpage in the backgroud")
    slideAutoAnimate:
        nbText: fmt("#### The next few slides will load an interactive webpage in the backgroud")
        nbText: fmt("They're articles that explain how to do the activities mentioned above to remove <span style=\"color:{malwareHighlight}\">malware</span>.")
        nbText: fmt("<span style=\"color:red\">WARNING</span>: pages take a second to load.")

    slide(slideOptions(autoAnimate = true, iframeBackground="https://www.hobsoft.com/best-malware-removal/", iframeInteractive = true)):
        nbText: fmt(" <span style=\"color:black\">AntiMalware suites</span>") # LIST AVs

    slide(slideOptions(iframeBackground="https://windowsreport.com/12068-wipe-a-hard-drive-windows-8/", iframeInteractive = true)):
        nbText: fmt("<span style=\"color:black\"> How to format drive (Windows) </span>") # I-FRAME
    slide(slideOptions(iframeBackground="https://support.microsoft.com/en-us/topic/how-to-start-a-scan-for-viruses-or-malware-in-microsoft-defender-e98663f1-8827-4abe-b9ce-fb2664201f29", iframeInteractive = true)):
        nbText: fmt("<span style=\"color:black\">Running a Windows Defender scan</span>") # I-FRAME
    
slide(slideOptions(gradientBackground= &"{prefixes[find(prefixes, sample(prefixes))]}-gradient({primaryColors[find(primaryColors, sample(primaryColors))]}, {secondaryColors[find(secondaryColors, sample(secondaryColors))]})")):
    slide(slideOptions(imageBackground="backgrounds/avmidwit.png")):
        nbText: fmt("<br> <span style=\"color:{stdHighlight}\">But in the end, AV is useless and it all comes down recognizing phishing so you don't get infected..</span>") # INCLUDE IQ-RANGE PICTURE OF AV,

    slideAutoAnimate:
        nbText: fmt("unfortunately, some malware can withstand a format, isn't caught by antivirus programs, etc.")
        nbText: fmt("#### What i mean by use ur brain.")

slide(slideOptions(gradientBackground= &"{prefixes[find(prefixes, sample(prefixes))]}-gradient({primaryColors[find(primaryColors, sample(primaryColors))]}, {secondaryColors[find(secondaryColors, sample(secondaryColors))]})")):
    slide:
        nbText: fmt("Why protecting yourself is important for the Average Joe.")
        nbText: fmt("this will be something tommorow. ") # he needs to geT MOTIVATED !!!!! you're fuccking slacking.
    slide:
        nbText: fmt("# DEMO")

slide(slideOptions(gradientBackground="radial-gradient(#A81AC0, white)")):
    slideAutoAnimate:
        nbText: fmt("Conclusion/Thanks")
    slideAutoAnimate:
        nbText: fmt("Conclusion/Thanks")
        nbText: fmt("#### powered by [nimlang](https://nim-lang.org/)")
    slideAutoAnimate:
        nbText: fmt("Conclusion/Thanks")
        nbText: fmt("#### powered by [nimlang](https://nim-lang.org/)")
        nbText: fmt("**Leave credits here**")
nbSave()




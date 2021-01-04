# musicgenie

A new Flutter application.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Inspiration
Did you know? [4 chords can play most songs!](https://www.musical-u.com/learn/four-chords-and-the-truth/)
This year's Nobel Prize in Chemistry was for a method developed for genome editing. While I was exploring genetics, I realised that the DNA strands are made of 2 pairs of nucleotides - (Adenine, Thymine) and (Cytosine, Guanine). Given that they can occur in 4 variations, we can correlate each set to a chord, and these produce music. Since everyone's DNA is unique, it ensures everyone's music is also unique!

## What it does
* You can produce unique music which is coded to your genes.
* You can share this audio with friends.
* Additionally, you can learn playing a music instrument of your choice on our platform.
* You can visualise any existing 4 chord music as a DNA sequence.

### User Flow and Screens
* **Splash Screen** - The logo and motto!
* **Onboarding Screen** - to explain the features available. Learn about genetics, convert your DNA or any DNA sequence to music, watch tutorials for different instruments and download DNA sequence correspondence to existing 4 chord music.
* **Welcome Screen** - Welcome to music Genie
* **LogIn Screen** - Hello Genie
* **Introduction** - Adenine, Thymine, Cytosine and Guanine are introduced in the way of images. Cross-pairing doesn't work can be visualised. AT and CG fit with each other like a puzzle.
* **Flash Cards** - To familiarise yourself with the different terms in genetics. You can save terms you wish to look at later, watch videos on the same or even listen to the definition in audio format.
* **Visualiser - Enter a DNA sequence and visualise it in animation format. 
* **Music Player** - To convert the DNA sequence into an audio format. You then get the option of downloading the animation, or only downloading the audio. You can also share the same on your social media handles. We then proceed to looking at the chords and the mapping.
* **Gene Chords** - You can see the mapping which has been done. By default the instrument will be a piano, but you can also explore chords of the other instrument like Drums, Guitar, Violin and more. Mapping is done like 
``` 1. CG - E major chord ```
``` 2. GC - B major chord ```
``` 3. AT - C# minor chord ```
``` 4. TA - A major chord ```
* **Video Tutorials** - Here you can learn the chords of different instruments, look at the DNA music produced by other people and more. 
* **Demo Video** - On clicking a video, you can watch it and then download the Chord music as well as the animated DNA sequence for it.

## How I built it
I built it using Flutter and dart. I first did my research and understood the basics of genetics, genes, DNA and ATCG building blocks. Then I did basic pen-paper wireframing, post which I made a User Experience flow in Adobe XD. Then I made a Flutter project in Android Studio. For most issues faced I used stackoverflow.
Then while coding, I explored the need for various plugins and decided to define a tasklist for myself. Source for the terms is [DNA Flashcards](https://quizlet.com/4348465/dna-flashcards/).

### Tasklist identified

- [ ] Youtube API for playing videos directly from Youtube
- [x] Lottie for Animated gifs
- [x] Onboarding screen plugin
- [x] Dialog box for audio/video download confirmation
- [x] Splash screen plugin
- [ ] Music Player playing real audio files
- [x] Share plugin for sharing audio to social media (Used but an issue)
- [x] Expansion tile cards for flash cards to show terms and meanings
- [ ] Dynamically changing the DNA sequence image and audio based on user string input
- [ ] Using firebase to store and validate email and password after sign up and log in

## Challenges I ran into
Working alone meant I needed to brainstorm all ideas myself, do the design as well as the video, the coding for the app by myself. This meant I couldn't finish all the tasks I had envisioned to complete this weekend.

## Accomplishments that I'm proud of
This was only my second time using Flutter, so I was determined to learn more about Flutter's additional capabilities. I explored the plugins for making splash screen and the onboarding screens. I used an API successfully for the first time to watch embedded videos in the app directly from Youtube. Glad to have a well designed working App within the timeline.

## What I learned
[Flutter is among the fastest growing skills for software engineers](https://www.xda-developers.com/flutter-android-design-angular-material-fastest-growing-skills-software-engineers/) and I'm super pumped to be on this wagon.
* Learnt time management and making checklists to keep track of work.
* Explored the different widgets available in Flutter.

## What's next for music GENiE
* I believe it will be possible to compare similarity of songs based on whether they generate the same DNA sequence.
* I want to add games and dance videos around the theme of genetics.
* Code for dynamic image and let the user play around.
* Finish all the pending tasks from the tasklist.
* Deploy a beta version to the Google Playstore to get user reviews and work on suggestions.

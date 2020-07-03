# SaReGaMaApp

A App That Plays Sound - SaReGaMa App 

### Idea
The basic idea is to  play a SaReGaMa sound, The simple solution is to create buttons and to click of those buttons the associated sound will be played. we have 7 diferent sounds available

### Getting Started
A command ``` flutter create SaregamaApp``` creates new flutter project named as SaregamaApp.

### Adding Sound Files
Sound files are added to assets folder, and assets folder is define under
```flutter``` in ```pubspec.yaml``` to make files accessible.

### A package to play audio files
```audioplayers``` is a package required to play audio files in flutter app, ```audioplayers``` works for Android, iOS, macOS and web. Package has ```audio_cache``` api to play app's assets files.

### The google search
search google with ```color of rainbow``` and google returns ```ROYGBIV or Roy G. Biv```.
```ROYGBIV or Roy G. Biv``` Red, Orange, Yellow, Green, Blue, Indigo, Voilet. We have 7 different sound so lets make 7 buttons with 7 different color to play 7 different sounds.

### crossAxisAlignment
```crossAxisAlignment``` decides how the children should be placed along the cross axis in a flex layout.
as our buttons was a initial small size, using ```crossAxisAlignment``` to ```stretch``` makes our Buttons available to full width. #looks great ```:)```

### Expanded
After stretching buttons to full width there are still some unused space, ```Expanded``` expands a child of a [Row], [Column], or [Flex] so that the child fills the available space, As a result 7 buttons fills the whole space equally to make our app Beautiful n working.

### WebApp
![WebApp](https://raw.githubusercontent.com/Rahulshahare/SaregamaApp/master/test/webapp.png)
[fullScreenode](https://raw.githubusercontent.com/Rahulshahare/SaregamaApp/master/test/fullscreen.png)

### Lets Build Prodution Versions
```flutter build web``` will Create Production Web App
```flutter build apk --split-per-abi``` will Create Optiomized Production Android Build.


# Version Updates


### 1.0.1 [Release](https://github.com/Rahulshahare/SaregamaApp/releases/tag/1.0.1)
- Press Back Again To Exit Functionaliy added.

### 1.0.0 [Release](https://github.com/Rahulshahare/SaregamaApp/releases/tag/1.0.0)
- 7 magical sound with 7 rainbow keys
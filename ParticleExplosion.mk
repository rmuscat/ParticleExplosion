##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=ParticleExplosion
ConfigurationName      :=Debug
WorkspacePath          :="C:/Users/Robert/Desktop/Projects/Particle Explosion"
ProjectPath            :="C:/Users/Robert/Desktop/Projects/Particle Explosion/ParticleExplosion"
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Robert
Date                   :=30/10/2019
CodeLitePath           :="C:/Program Files/CodeLite"
LinkerName             :=C:/MinGW/bin/g++.exe
SharedObjectLinkerName :=C:/MinGW/bin/g++.exe -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="ParticleExplosion.txt"
PCHCompileFlags        :=
MakeDirCommand         :=makedir
RcCmpOptions           := 
RcCompilerName         :=C:/MinGW/bin/windres.exe
LinkOptions            :=  -static-libgcc -static-libstdc++ -lSDL2main -lSDL2
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). $(IncludeSwitch)C:\Users\Robert\Desktop\Projects\Libraries\SDL2-2.0.10\i686-w64-mingw32\include\SDL2 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). $(LibraryPathSwitch)C:\Users\Robert\Desktop\Projects\Libraries\SDL2-2.0.10\i686-w64-mingw32\lib 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := C:/MinGW/bin/ar.exe rcu
CXX      := C:/MinGW/bin/g++.exe
CC       := C:/MinGW/bin/gcc.exe
CXXFLAGS := -std=c++14 -Wall -g -O0 -Wall $(Preprocessors)
CFLAGS   := -static-libgcc -static-libstdc++ -g -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := C:/MinGW/bin/as.exe


##
## User defined environment variables
##
CodeLiteDir:=C:\Program Files\CodeLite
Objects0=$(IntermediateDirectory)/Swarm.cpp$(ObjectSuffix) $(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IntermediateDirectory)/Screen.cpp$(ObjectSuffix) $(IntermediateDirectory)/Particle.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@$(MakeDirCommand) "./Debug"


$(IntermediateDirectory)/.d:
	@$(MakeDirCommand) "./Debug"

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/Swarm.cpp$(ObjectSuffix): Swarm.cpp $(IntermediateDirectory)/Swarm.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/Robert/Desktop/Projects/Particle Explosion/ParticleExplosion/Swarm.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Swarm.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Swarm.cpp$(DependSuffix): Swarm.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Swarm.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Swarm.cpp$(DependSuffix) -MM Swarm.cpp

$(IntermediateDirectory)/Swarm.cpp$(PreprocessSuffix): Swarm.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Swarm.cpp$(PreprocessSuffix) Swarm.cpp

$(IntermediateDirectory)/main.cpp$(ObjectSuffix): main.cpp $(IntermediateDirectory)/main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/Robert/Desktop/Projects/Particle Explosion/ParticleExplosion/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main.cpp$(DependSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/main.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/main.cpp$(DependSuffix) -MM main.cpp

$(IntermediateDirectory)/main.cpp$(PreprocessSuffix): main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main.cpp$(PreprocessSuffix) main.cpp

$(IntermediateDirectory)/Screen.cpp$(ObjectSuffix): Screen.cpp $(IntermediateDirectory)/Screen.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/Robert/Desktop/Projects/Particle Explosion/ParticleExplosion/Screen.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Screen.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Screen.cpp$(DependSuffix): Screen.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Screen.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Screen.cpp$(DependSuffix) -MM Screen.cpp

$(IntermediateDirectory)/Screen.cpp$(PreprocessSuffix): Screen.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Screen.cpp$(PreprocessSuffix) Screen.cpp

$(IntermediateDirectory)/Particle.cpp$(ObjectSuffix): Particle.cpp $(IntermediateDirectory)/Particle.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/Robert/Desktop/Projects/Particle Explosion/ParticleExplosion/Particle.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Particle.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Particle.cpp$(DependSuffix): Particle.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Particle.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Particle.cpp$(DependSuffix) -MM Particle.cpp

$(IntermediateDirectory)/Particle.cpp$(PreprocessSuffix): Particle.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Particle.cpp$(PreprocessSuffix) Particle.cpp


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/



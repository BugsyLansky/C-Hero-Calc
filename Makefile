CC=gcc
CXX=g++
RM=rm -f
CPPFLAGS=-Wall -O2 -std=c++11

CQ_SRCS=main.cpp cosmosClasses.cpp inputProcessing.cpp battleLogic.cpp cosmosDefines.cpp
CQ_OBJS=$(subst .cpp,.o,$(CQ_SRCS))
GO_SRCS=getOptimalForQuest.cpp cosmosClasses.cpp inputProcessing.cpp battleLogic.cpp cosmosDefines.cpp
GO_OBJS=$(subst .cpp,.o,$(GO_SRCS))

all: CosmosQuest getOptimalForQuest

CosmosQuest: $(CQ_OBJS)
	$(CXX) $(LDFLAGS) -o CosmosQuest $(CQ_OBJS) $(LDLIBS)

getOptimalForQuest: $(GO_OBJS)
	$(CXX) $(LDFLAGS) -o getOptimalForQuest $(GO_OBJS) $(LDLIBS)

CosmosQuest.o: main.cpp

cosmosClasses.o: cosmosClasses.cpp

inputProcessing.o: inputProcessing.cpp

battleLogic.o: battleLogic.cpp

cosmosDefines.o: cosmosDefines.cpp



clean:
	$(RM) $(CQ_OBJS) $(GO_OBJS)

distclean: clean
	$(RM) CosmosQuest getOptimalForQuest

rebuild: distclean all

runCQ: all
	./CosmosQuest

runGO: all
	./getOptimalForQuest

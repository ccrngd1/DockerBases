FROM microsoft/dotnet:2.1-aspnetcore-runtime
ARG source
WORKDIR /app
COPY obj/Docker/publish ./
#CMD ["/bin/bash"]
ENTRYPOINT ["dotnet", "HelloWorld.dll"]

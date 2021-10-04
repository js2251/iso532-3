function [FileList, FileListLength] = getAllFilesFromDirectory( strDir, strExtension )

strAllDirectories = genpath(strDir);
Separations = findstr(strAllDirectories, pathsep);
strPositions = [ [0 Separations(1:end-1)]+1; Separations-1 ];
cDirectories = cell(1,length(Separations));
for i=1:length(Separations)
   cDirectories(1,i) = cellstr(strAllDirectories(strPositions(1,i):strPositions(2,i)));
end
FileList = [];
for i = 1:length(Separations)
    NewFiles = dir([char(cDirectories(1,i)) '/*.' strExtension]);
    if ~isempty(NewFiles)
        for j = 1:length(NewFiles)
            NewFiles(j).name = cellstr( [char(cDirectories(1,i)) filesep char(NewFiles(j).name)] );
        end
    end
    FileList = [ FileList; NewFiles ];
end
FileListLength = length (FileList);
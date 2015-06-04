task :default => [:compile]


#task :quick do
#  compileStr = "#{compiler} #{options} #{root}"
#
#  system(compileStr + ' > output')
#
#  task(:findErrors).invoke('output')
#  task(:clean).invoke
#end

task :compile do
  root = 'master'
  compiler = 'xelatex'
  options = '-shell-escape'
  bib = 'bibtex'

  compileStr = '%s %s %s' % [compiler, options, root]
  bibtexStr = '%s %s' % [bib, root]

  system(compileStr + ' > /dev/null')
  system(bibtexStr + ' > /dev/null')
  system(compileStr + ' > /dev/null')
  system(compileStr + ' > output')

  task(:findErrors).invoke('output')
  task(:clean).invoke
end

task :clean do
  rm = 'rm -rf'
  tmpFiles = %w[aux log nav snm tdo pyg 
              toc vrb bbl bcf blg out bib.bak thm
              run.xml ].map{|f| '*.' + f}.join(' ')
  tmpFolders = %w[_minted-master/].join(' ')
  tmpFull  = %W[output].join(' ')

  system("#{rm} #{tmpFolders} #{tmpFiles} #{tmpFull}") 
end

task :findErrors, :file do |t, args|
  error = false 

  File.open(args[:file], 'r').each do |line|
    error = true if line.include?('!')
  end

  if error
    File.open(args[:file], 'r').each{|l| puts l}
    puts '---- ERROR COMPILING, CHECK ABOVE LOG ----'
  end
end

require "rubygems"
require 'yaml'
require 'pp' 
require 'deep_merge'

module Jekyll_Convert_Filename_to_Json
  class Generator < Jekyll::Generator
    safe true
    priority :highest

    def generate(site)


      #regEx for removing empty line
      regEx = /^[\s]*$\n/

      outputfile = "gallery.yml"

      # Define data source
      data_source = "_data"
      
      # Declare variables
      data = {}
      data_array = []

      #Path
      path_yaml = "#{data_source}/#{outputfile}"

      if !File.file?(path_yaml)
        File.open(path_yaml, "w") {|f| f.write() }
      end
      if File.file?(path_yaml)
        File.open(path_yaml, 'w') {|file| file.truncate(0) }
      end
      
      # Load filenanem
      gallery_filenames = Dir[ 'gallery/images/**/*' ].reject{ |file| file.include?('.md') || file.include?('.markdown') || file.include?('.txt&') }.select{ |f| File.file? f }.map{ |f| File.path f }

      # Loop gallery file name
      gallery_filenames.each do |d|
        
        gallery_element  = d.split('/')
        gallery_language = gallery_element[-2]
        gallery_filename = gallery_element.last.gsub('.jpg','')
        
        gallery_filemeta = gallery_filename.gsub('.jpg','').split('+')

        gallery_filemeta_page       = gallery_filemeta[0].split('-')[0]
        if gallery_filemeta[0].split('-').size > 1
          gallery_filemeta_subpage    = gallery_filemeta[0].split('-').drop(1).join(" ")
        end
        if gallery_filemeta[1]
          gallery_filemeta_name_id   = gallery_filemeta[1]
          gallery_filemeta_name        = gallery_filemeta[1].gsub('-',' ')
        end
        if gallery_filemeta[2]
          gallery_filemeta_type       = gallery_filemeta[2].split('-').first
        end
        if gallery_filemeta[3]
          gallery_filemeta_author     = gallery_filemeta[3].gsub('-',' ')
        end
        if gallery_filemeta[4]
          gallery_filemeta_price      = gallery_filemeta[4].gsub('-',' ')
        end 

        data_element = { "#{gallery_language}_#{gallery_filemeta_page}_#{gallery_filemeta_name_id}" => { 
                            "id" => "#{gallery_language}_#{gallery_filemeta_page}_#{gallery_filemeta_name_id}", 
                            "permalink" => "#{gallery_language}/#{gallery_filemeta_page}/#{gallery_filemeta_name_id}/", 
                            "item-path" => ["#{d}"], 
                            "item-path-#{gallery_filemeta_type}" => ["#{d}"], 
                            "filename" => "#{gallery_filename}", 
                            "lang" => "#{gallery_language}", 
                            "item-name" => "#{gallery_filemeta_name}",
                            "slug" => "#{gallery_filemeta_page}",
                            "subpage" => "#{gallery_filemeta_subpage}", 
                            "categories" => ["#{gallery_filemeta_type}"] 
                            } 
                        }
        data = data.deep_merge!(data_element)

      end
      

      # Loop data for extracting only
      data.each do |d|

        data_array << d[1]

        File.open(path_yaml, 'a') { |f|
          f.puts data_array.to_yaml.gsub("---", "").gsub(regEx, '')
        }

        # Load YML file => remove duplicated entries
        file_yaml = YAML.load(File.open(path_yaml)).uniq { |s| s.first }
        File.open(path_yaml, "w") {|f| f.write(file_yaml.to_yaml) }

      end 

    end
  end
end

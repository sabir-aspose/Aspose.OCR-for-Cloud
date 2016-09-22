require 'aspose_ocr_cloud'

include AsposeOCRCloud
include AsposeStorageCloud
 
configFile = File.expand_path("../../../data/config.json", __FILE__);
configProps = JSON.parse( IO.read(configFile, encoding: 'utf-8') )
data_path = File.expand_path("../../../data/", __FILE__);
out_path = configProps['out_folder'];
  
#ExStart:1
AsposeApp.app_key_and_sid(configProps['api_key'], configProps['app_sid'])
AsposeOCRCloud::Configuration.debugging = false
AsposeOCRCloud::Configuration.temp_folder_path = out_path

#Instantiate Aspose.OCR API SDK
@ocrApi = OcrApi.new

#Set the image file url
url = "https://dl.dropboxusercontent.com/s/zj35mqdouoxy3rs/Sampleocr.bmp";

#Set the language of the document
language = 'English';

#Set the spelling correction is used
use_default_dictionaries = 'true';

opts = {url: url, language: language, use_default_dictionaries: use_default_dictionaries}

#invoke Aspose.OCR Cloud SDK API to extract image text from file url
response = @ocrApi.post_ocr_from_url_or_content(opts)

if response.status == "OK"
  print "Text :: " + response.text
  print "\n\nExtract OCR or HOCR Text from Images, Done!"
end
#ExEnd:1

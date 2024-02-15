# HenScan

<img width="191" alt="logo" src="https://github.com/Nikhila-KS/Poultry_diseases_detection/assets/100426366/9ee6714d-0297-4168-b722-f11d1f10b655">



## INTRODUCTION
 
With 23 billion live chickens, the poultry industry is essential to global nutrition. India, a significant 
player with an industry valued at Rs. 80,000 crore in 2015–2016, has difficulties managing diseases. 
This sector is divided into an 80\% organised and 20\% unorganized sector. A crucial component of 
food security, 729 million chickens are reported in the 19th Livestock Census. The spread of disease 
is made simpler by large-scale production, which causes significant losses. It is essential to address 
these health issues if the chicken industry is to continue fulfilling nutritional needs. 

The diseases that affect the health of birds, like chickens, turkeys, ducks, geese, and ostriches, come 
under poultry diseases. Such diseases result in decreased production, rapid spread of disease, and even 
death of these birds. The cause of the disease can be viruses, pathogens, bacteria, parasites, fungi, etc. 
Upon getting affected with such diseases, most of the birds start showing early symptoms like sneezing 
and gasping; the symptoms may vary according to the age of the bird and type of the disease. Usually, 
such diseases spread rapidly, and within days, all other birds in contact with the affected bird may start 
showing symptoms and cause high mortality. Some most common diseases observed in poultry are 
Coccidiosis, Salmonella, Newcastle, Mycoplasmosis, Fowl Typhoid, Botulism, and Infectious Coryza. 
Coccidiosis is caused by protozoa of the phylum Apicomplexa, family Eimeriidae. The majority of 
species that infect chickens are found in the genus Eimeria and impact different intestinal locations. 
The disease course is fast (4–7 days) and is marked by parasite growth in host cells with significant 
destruction to the intestinal mucosa. Coccidia in chicken are generally host-specific, and the different 
species infect distinct regions of the gut. On the other hand, the coccidia may infect the entire digestive 
tract in game birds, such as quail. Coccidiosis affects game birds, wild birds, and poultry raised in 
captivity worldwide. 

Newcastle disease (ND) is caused by the virulent Newcastle disease virus (NDV), which infects 
domestic chickens as well as other bird species. Newcastle disease poses little threat to public health 
or food safety. Viral NDV can cause a deadly illness in domestic poultry that has a significant impact 
on society and the economy. It is a global issue that mainly occurs as an acute respiratory illness, while 
the most common clinical form may be diarrhea, sadness, or nervous symptoms. 
Around the world, salmonellosis, mostly caused by the Gram-negative bacterium Salmonella sp., is a 
major poultry disease. Salmonella gallinarum (S. gallinarum) and Salmonella pullorum (S. pullorum), 
which cause chicken typhoid and pullorum illness, respectively, are two salmonellae that are 
unexpected to avian hosts. Despite not having the same infectious potential as Salmonella 
typhimurium or Salmonella enteritidis, they can severely kill chickens, which can result in significant 
financial loss. 

With the growth of technology, it is now possible to predict infectious diseases in poultry and obtain 
data that can be used to create predictive models. Deep learning algorithms like convolutional neural 
networks (CNN), based on fecal pictures, have been created to diagnose illnesses in poultry.  It is 
really important to treat these diseases timely.  
The primary objective of our initiative is to reduce the impact of poultry disease on birds' health. To 
solve this problem, we developed a mobile application called "HenScan" that will aid poultry farmers 
in the early detection of any poultry disease and suggest its prevention and treatment. We have trained 
several CNN models like the baseline CNN model, VGG16 model, MobileNetV2 model, and its 
updated version MobileNetV3 model that gives higher accuracy. We have integrated the model that 
gives the best accuracy with our mobile application. 
The rest of this paper will conduct a thorough literature review, the suggested approach, the 
outcomes of the experiment, and the importance of this study in detecting the disease in poultry 
will be discussed in the later part.
<br>


<b> To make disease detection accessible and user-friendly for farmers, we are developing a mobile application. This application is designed to allow farmers to capture and upload images of poultry fecal samples using their smartphones. The user interface is crafted with an intuitive design, simplifying the process of image upload for analysis. </b>



## Tech Stack Used 
The application, named “Hen Scan,” is built using Flutter, a versatile and popular framework 
known for its single codebase that functions efficiently across different devices, ensuring a 
consistent and smooth user experience. 

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

### Multilingual Support 

To further enhance the user experience and promote inclusivity, the application has been made 
multilingual with language options in Hindi, English, and Punjabi. This feature allows users to 
interact with the application in their preferred language, facilitating better understanding and 
engagement with the application’s features and content. 

## Internal Working 
### Model Training and Integration 
The machine learning model integrated into the application was trained to detect three major 
poultry diseases: Coccidiosis, Newcastle disease, and Salmonella. The training dataset included 
images of healthy poultry fecal samples as well. The trained model was converted into a 
TensorFlow Lite (TFLite) file and integrated into the application. 
5.8.2 Image processing and Prediction 
When a user uploads an image and clicks on the “Predict” button, the application initiates an 
image processing sequence. This sequence mirrors the image processing steps used during the 
model’s training phase, including adjusting the image’s height, width, and pixel density. 
Once the image processing is complete, the model predicts the result. The predicted result, 
along with information about precautions and other symptoms, is then displayed to the user. 
This process ensures that the user receives a comprehensive analysis of the poultry’s health 
status, empowering them to take appropriate action based on the prediction. 
In essence, the application provides a seamless experience from image capture/upload to 
disease prediction and prevention, all powered by advanced machine learning algorithms. This 
makes it a valuable tool for farmers in maintaining the health of their poultry and preventing 
potential disease outbreaks. 

![image](https://github.com/Nikhila-KS/Poultry_diseases_detection/assets/100426366/b74a73e1-a868-4679-8a18-9d316bd07b00)


## Step-by-Step process 
The application follows a simple step-by-step process: 
1. Camera Icon: Users can tap this icon to either capture a picture using their phone’s 
camera or select an image from their gallery. 
2. Upload & Predict: After an image is selected, users can press the “Predict” button. This 
triggers the application’s machine learning model, which analyzes the image to identify 
potential diseases. 
3. Result Screen: Upon completion of the analysis, users are redirected to a new screen. 
This screen displays the predicted disease along with recommended prevention and 
precautionary measures.

The mobile application is not just limited to disease prediction. It also serves as a 
comprehensive guide providing crucial information on disease prevention methods. Depending 
on the disease or health status identified, farmers are provided with customized 
recommendations for preventive measures. This proactive approach enables farmers to take 
preventive actions in advance, thereby reducing the risk of disease outbreaks and minimizing 
potential economic losses. 

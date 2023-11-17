public with sharing class PrintJobPDFController {
    
    @AuraEnabled
    public static List<String> getPDFPrint(String vfPage){

        List<String> pageStrings = new List<String>();
        PageReference pdfPage;
        if(vfPage == 'generatePDF'){
            pdfPage = page.generatePdf; // controls the page to display
        }
        
        Blob pdfBlob = pdfPage.getContent();
        String downloadURL = EncodingUtil.base64Encode(pdfBlob);

        pageStrings.add(downloadURL);
        pageStrings.add(pdfPage.getURL());

        return pageStrings;
        
    }
}
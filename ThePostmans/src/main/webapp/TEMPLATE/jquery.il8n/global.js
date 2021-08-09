  var set_locale_to = function(locale) {

                    if (locale){
                          $.i18n().locale = locale;
                   }
                   $('body').i18n();
                  };



                  jQuery(function() {
                        $.i18n().load( {
                           'en': 'TEMPLATE/jquery.il8n/languages/en.json',
                           'fr': 'TEMPLATE/jquery.il8n/languages/fr.json'
                         }).done(function() {
                            set_locale_to( Global.staticProperty);
                          });
                  });
                  
                  
                  
 function Global () { // constructor function
}

                 
                  
                  
                  
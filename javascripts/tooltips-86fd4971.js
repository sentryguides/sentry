$(function(){$("[data-url]").each(function(t){$(this).qtip({style:{classes:"qtip-light"},content:{text:function(t,n){return $.ajax({url:$(this).data("url")}).then(function(t){n.set("content.text",t)},function(t,e,i){n.set("content.text",e+": "+i)}),"Loading..."}}})})});
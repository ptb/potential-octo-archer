/*!
 * NWMatcher 1.2.5 - Fast CSS3 Selector Engine
 * Copyright (C) 2007-2012 Diego Perini
 * See http://nwbox.com/license
 */

(function(n){var i=typeof exports=="object"?exports:(n.NW||(n.NW={}))&&(n.NW.Dom||(n.NW.Dom={})),t=n.document,r=t.documentElement,it=[].slice,lr={}.toString,oi,yt,d,pt,e,si,hi,ci,li,rt="[#.:]?",ai="([~*^$|!]?={1})",c="[\\x20\\t\\n\\r\\f]*",vi="[\\x20]|[>+~][^>+~]",yi="[-+]?\\d*n?[-+]?\\d*",wt="\"[^\"]*\"|'[^']*'",bt="\\[.*\\]|\\(.*\\)|\\{.*\\}",o="(?:[-\\w]|[^\\x00-\\xa0]|\\\\.)",y="(?:-?[_a-zA-Z]{1}[-\\w]*|[^\\x00-\\xa0]+|\\\\.+)+",pi="("+wt+"|"+y+")",p=c+"("+o+"+:?"+o+"+)"+c+"(?:"+ai+c+pi+")?"+c,ar=p.replace(pi,"([\\x22\\x27]*)((?:\\\\?.)*?)\\3"),ut="((?:"+yi+"|"+wt+"|"+rt+"|"+o+"+|\\["+p+"\\]|\\(.+\\)|"+c+"|,)+)",kt="(?=[\\x20\\t\\n\\r\\f]*[^>+~(){}<>])(\\*|(?:"+rt+y+")|"+vi+"|\\["+p+"\\]|\\("+ut+"\\)|\\{.+\\}|,)+",vr=kt.replace(ut,".*"),ft=new RegExp(kt,"g"),et=new RegExp("^"+c+"|"+c+"$","g"),yr=new RegExp("^((?!:not)("+rt+"|"+y+"|\\([^()]*\\))+|\\["+p+"\\])$"),dt=new RegExp("([^,\\\\\\[\\]]+|\\[[^[\\]]*\\]|\\[.*\\]|\\([^()]+\\)|\\(.*\\)|\\{[^{}]+\\}|\\{.*\\}|\\\\.)+","g"),pr=new RegExp("(\\["+p+"\\]|\\("+ut+"\\)|[^\\x20>+~]|\\\\.)+","g"),wi=/[\x20\t\n\r\f]+/g,bi=new RegExp(y+"|^$"),a=function(){var n=(t.appendChild+"").replace(/appendChild/g,"");return function(t,i){var r=t&&t[i]||!1;return r&&typeof r!="string"&&n==(r+"").replace(new RegExp(i,"g"),"")}}(),wr=a(t,"hasFocus"),ot=a(t,"querySelector"),br=a(t,"getElementById"),kr=a(r,"getElementsByTagName"),st=a(r,"getElementsByClassName"),dr=a(r,"getAttribute"),gr=a(r,"hasAttribute"),ki=function(){var n=!1,i=r.id;r.id="length";try{n=!!it.call(t.childNodes,0)[0]}catch(u){}return r.id=i,n}(),di="nextElementSibling"in r&&"previousElementSibling"in r,nu=br?function(){var u=!0,i="x"+String(+new Date),n=t.createElementNS?"a":'<a name="'+i+'">';return(n=t.createElement(n)).name=i,r.insertBefore(n,r.firstChild),u=!!t.getElementById(i),r.removeChild(n),u}():!0,gi=kr?function(){var n=t.createElement("div");return n.appendChild(t.createComment("")),!!n.getElementsByTagName("*")[0]}():!0,nr=st?function(){var r,n=t.createElement("div"),i="台北";return n.appendChild(t.createElement("span")).setAttribute("class",i+"abc "+i),n.appendChild(t.createElement("span")).setAttribute("class","x"),r=!n.getElementsByClassName(i)[0],n.lastChild.className=i,r||n.getElementsByClassName(i).length!=2}():!0,tu=dr?function(){var n=t.createElement("input");return n.setAttribute("value",5),n.defaultValue!=5}():!0,tr=gr?function(){var n=t.createElement("option");return n.setAttribute("selected","selected"),!n.hasAttribute("selected")}():!0,iu=function(){var n=t.createElement("select");return n.appendChild(t.createElement("option")),!n.firstChild.selected}(),ir,rr,l,u,ur=/opera/i.test(lr.call(n.opera)),ru=ur&&parseFloat(opera.version())>=11,uu=ot?function(){var i=[],r=t.createElement("div"),n,u=function(n,t,i,r){var u=!1;t.appendChild(i);try{u=t.querySelectorAll(n).length==r}catch(f){}while(t.firstChild)t.removeChild(t.firstChild);return u};return n=t.createElement("p"),n.setAttribute("class",""),u('[class^=""]',r,n,1)&&i.push("[*^$]=[\\x20\\t\\n\\r\\f]*(?:\"\"|'')"),n=t.createElement("option"),n.setAttribute("selected","selected"),u(":checked",r,n,0)&&i.push(":checked"),n=t.createElement("input"),n.setAttribute("type","hidden"),u(":enabled",r,n,1)&&i.push(":enabled",":disabled"),n=t.createElement("link"),n.setAttribute("href","x"),u(":link",r,n,1)||i.push(":link"),tr&&i.push("\\[[\\x20\\t\\n\\r\\f]*(?:checked|disabled|ismap|multiple|readonly|selected|value)"),i.length?new RegExp(i.join("|")):{test:function(){return!1}}}():!0,fu=new RegExp("(?:\\[[\\x20\\t\\n\\r\\f]*class\\b|\\."+y+")"),eu=new RegExp((gi&&nr)?"^#?-?[_a-zA-Z]{1}"+o+"*$":ur?"^(?:\\*|#-?[_a-zA-Z]{1}"+o+"*)$":"^(?:\\*|[.#]?-?[_a-zA-Z]{1}"+o+"*)$"),ou={a:1,A:1,area:1,AREA:1,link:1,LINK:1},su={checked:1,disabled:1,ismap:1,multiple:1,readonly:1,selected:1},ht={value:"defaultValue",checked:"defaultChecked",selected:"defaultSelected"},hu={action:2,cite:2,codebase:2,data:2,href:2,longdesc:2,lowsrc:2,src:2,usemap:2},fr={"class":0,accept:1,"accept-charset":1,align:1,alink:1,axis:1,bgcolor:1,charset:1,checked:1,clear:1,codetype:1,color:1,compact:1,declare:1,defer:1,dir:1,direction:1,disabled:1,enctype:1,face:1,frame:1,hreflang:1,"http-equiv":1,lang:1,language:1,link:1,media:1,method:1,multiple:1,nohref:1,noresize:1,noshade:1,nowrap:1,readonly:1,rel:1,rev:1,rules:1,scope:1,scrolling:1,selected:1,shape:1,target:1,text:1,type:1,valign:1,valuetype:1,vlink:1},cu={accept:1,"accept-charset":1,alink:1,axis:1,bgcolor:1,charset:1,codetype:1,color:1,enctype:1,face:1,hreflang:1,"http-equiv":1,lang:1,language:1,link:1,media:1,rel:1,rev:1,target:1,text:1,type:1,vlink:1},w={},g={"=":"n=='%m'","^=":"n.indexOf('%m')==0","*=":"n.indexOf('%m')>-1","|=":"(n+'-').indexOf('%m-')==0","~=":"(' '+n+' ').indexOf(' %m ')>-1","$=":"n.substr(n.length-'%m'.length)=='%m'"},b={ID:new RegExp("^\\*?#("+o+"+)|"+bt),TAG:new RegExp("^("+o+"+)|"+bt),CLASS:new RegExp("^\\*?\\.("+o+"+$)|"+bt)},h={spseudos:/^\:((root|empty|nth-)?(?:(first|last|only)-)?(child)?-?(of-type)?)(?:\(([^\x29]*)\))?(.*)/,dpseudos:/^\:(link|visited|target|lang|not|active|focus|hover|checked|disabled|enabled|selected)(?:\((["']*)(.*?(\(.*\))?[^'"()]*?)\2\))?(.*)/,attribute:new RegExp("^\\["+ar+"\\](.*)"),children:/^[\x20\t\n\r\f]*\>[\x20\t\n\r\f]*(.*)/,adjacent:/^[\x20\t\n\r\f]*\+[\x20\t\n\r\f]*(.*)/,relative:/^[\x20\t\n\r\f]*\~[\x20\t\n\r\f]*(.*)/,ancestor:/^[\x20\t\n\r\f]+(.*)/,universal:/^\*(.*)/,id:new RegExp("^#("+o+"+)(.*)"),tagName:new RegExp("^("+o+"+)(.*)"),className:new RegExp("^\\.("+o+"+)(.*)")},er=function(n,t){var r=-1,i;if(!n.length&&Array.slice)return Array.slice(t);while(i=t[++r])n[n.length]=i;return n},or=function(n,t,i){for(var u=-1,r;r=t[++u];)if(!1===i(n[n.length]=r))break;return n},k=function(n,e){var o,s=t;pt=n,t=n.ownerDocument||n,(e||s!==t)&&(r=t.documentElement,u=t.createElement("DiV").nodeName=="DiV",l=!u&&typeof t.compatMode=="string"?t.compatMode.indexOf("CSS")<0:function(){var n=t.createElement("div").style;return n&&(n.width=1)&&n.width=="1px"}(),o=t.createElement("div"),o.appendChild(t.createElement("p")).setAttribute("class","xXx"),o.appendChild(t.createElement("p")).setAttribute("class","xxx"),ir=!u&&st&&l&&(o.getElementsByClassName("xxx").length!=2||o.getElementsByClassName("xXx").length!=2),rr=!u&&ot&&l&&(o.querySelectorAll("[class~=xxx]").length!=2||o.querySelectorAll(".xXx").length!=2),f.CACHING&&i.setCache(!0,t))},gt=function(n,t){for(var r=-1,i=null;i=t[++r];)if(i.getAttribute("id")==n)break;return i},nt=nu?function(n,t){var i=null;return(n=n.replace(/\\/g,""),u||t.nodeType!=9)?gt(n,t.getElementsByTagName("*")):(i=t.getElementById(n))&&i.name==n&&t.getElementsByName?gt(n,t.getElementsByName(n)):i}:function(n,t){return n=n.replace(/\\/g,""),t.getElementById&&t.getElementById(n)||gt(n,t.getElementsByTagName("*"))},lu=function(n,i){return k(i||(i=t)),nt(n,i)},au=function(n,t){var f=n=="*",i=t,u=[],r=i.firstChild;for(f||(n=n.toUpperCase());i=r;)if(i.tagName>"@"&&(f||i.tagName.toUpperCase()==n)&&(u[u.length]=i),!(r=i.firstChild||i.nextSibling))while(!r&&(i=i.parentNode)&&i!==t)r=i.nextSibling;return u},v=!gi&&ki?function(n,t){return u||t.nodeType==11?au(n,t):it.call(t.getElementsByTagName(n),0)}:function(n,t){var r=-1,e=r,u=[],i,f=t.getElementsByTagName(n);if(n=="*")while(i=f[++r])i.nodeName>"@"&&(u[++e]=i);else while(i=f[++r])u[r]=i;return u},vu=function(n,i){return k(i||(i=t)),v(n,i)},sr=function(n,t){return lt('[name="'+n.replace(/\\/g,"")+'"]',t)},yu=function(n,t){var f=-1,o=f,e=[],r,s=v("*",t),i;for(n=" "+(l?n.toLowerCase():n).replace(/\\/g,"")+" ";r=s[++f];)i=u?r.getAttribute("class"):r.className,i&&i.length&&(" "+(l?i.toLowerCase():i).replace(wi," ")+" ").indexOf(n)>-1&&(e[++o]=r);return e},tt=function(n,t){return nr||ir||u||!t.getElementsByClassName?yu(n,t):it.call(t.getElementsByClassName(n.replace(/\\/g,"")),0)},pu=function(n,i){return k(i||(i=t)),tt(n,i)},ni="compareDocumentPosition"in r?function(n,t){return(n.compareDocumentPosition(t)&16)==16}:"contains"in r?function(n,t){return n!==t&&n.contains(t)}:function(n,t){while(t=t.parentNode)if(t===n)return!0;return!1},hr=tu?function(n,t){return(t=t.toLowerCase(),ht[t])?n[ht[t]]||"":hu[t]?n.getAttribute(t,2)||"":su[t]?n.getAttribute(t)?t:"":(n=n.getAttributeNode(t))&&n.value||""}:function(n,t){return n.getAttribute(t)||""},ti=tr?function(n,t){return(t=t.toLowerCase(),ht[t])?!!n[ht[t]]:(n=n.getAttributeNode(t),!!(n&&(n.specified||n.nodeValue)))}:function(n,t){return u?!!n.getAttribute(t):n.hasAttribute(t)},wu=function(n){for(n=n.firstChild;n;){if(n.nodeType==3||n.nodeName>"@")return!1;n=n.nextSibling}return!0},bu=function(n){return ti(n,"href")&&ou[n.nodeName]},ku=function(n,t){for(var i=1,r=t?"nextSibling":"previousSibling";n=n[r];)n.nodeName>"@"&&++i;return i},du=function(n,t){for(var i=1,r=t?"nextSibling":"previousSibling",u=n.nodeName;n=n[r];)n.nodeName==u&&++i;return i},gu=function(n){for(var t in n)f[t]=!!n[t],t=="SIMPLENOT"?(ui={},at={},fi={},vt={},f.USE_QSAPI=!1,ft=new RegExp(vr,"g")):t=="USE_QSAPI"&&(f[t]=!!n[t]&&ot,ft=new RegExp(kt,"g"))},s=function(t){if(t="SYNTAX_ERR: "+t+" ",f.VERBOSITY)if(typeof n.DOMException!="undefined")throw{code:12,message:t};else throw new Error(12,t);else n.console&&n.console.log?n.console.log(t):n.status+=t},f={CACHING:!1,SHORTCUTS:!1,SIMPLENOT:!0,USE_HTML5:!1,USE_QSAPI:ot,VERBOSITY:!0},ii="r[r.length]=c[k];if(f&&false===f(c[k]))break;else continue main;",ct=function(n,t,i){var u=typeof n=="string"?n.match(dt):n,e,f,r;if(typeof t=="string"||(t=""),u.length==1)t+=cr(u[0],i?ii:"f&&f(k);return true;");else for(e=-1,f={};r=u[++e];)r=r.replace(et,""),!f[r]&&(f[r]=!0)&&(t+=cr(r,i?ii:"f&&f(k);return true;"));return i?new Function("c,s,r,d,h,g,f","var N,n,x=0,k=-1,e;main:while((e=c[++k])){"+t+"}return r;"):new Function("e,s,r,d,h,g,f","var N,n,x=0,k=e;"+t+"return false;")},cr=function(n,i){for(var c,o,y,a=0,e,r,k,b,v,p;n;){if(a++,r=n.match(h.universal))e="";else if(r=n.match(h.id))i="if("+(u?'s.getAttribute(e,"id")':'(e.submit?s.getAttribute(e,"id"):e.id)')+'=="'+r[1]+'"){'+i+"}";else if(r=n.match(h.tagName))i="if(e.nodeName"+(u?'=="'+r[1]+'"':'.toUpperCase()=="'+r[1].toUpperCase()+'"')+"){"+i+"}";else if(r=n.match(h.className))i="if((n="+(u?'s.getAttribute(e,"class")':"e.className")+')&&n.length&&(" "+'+(l?"n.toLowerCase()":"n")+".replace("+wi+'," ")+" ").indexOf(" '+(l?r[1].toLowerCase():r[1])+' ")>-1){'+i+"}";else if(r=n.match(h.attribute)){if(e=r[1].split(":"),e=e.length==2?e[1]:e[0]+"",r[2]&&!g[r[2]])return s('Unsupported operator in attribute selectors "'+n+'"'),"";v=!1,p="false",r[2]&&r[4]&&(p=g[r[2]])?(fr["class"]=l?1:0,r[4]=r[4].replace(/\\([0-9a-f]{2,2})/,"\\x$1"),v=(u?cu:fr)[e.toLowerCase()],p=p.replace(/\%m/g,v?r[4].toLowerCase():r[4])):(r[2]=="!="||r[2]=="=")&&(p="n"+r[2]+'="'+r[4]+'"'),e="n=s."+(r[2]?"get":"has")+'Attribute(e,"'+r[1]+'")'+(v?".toLowerCase();":";"),i=e+"if("+(r[2]?p:"n")+"){"+i+"}"}else if(r=n.match(h.adjacent))i=di?"var N"+a+"=e;if(e&&(e=e.previousElementSibling)){"+i+"}e=N"+a+";":"var N"+a+'=e;while(e&&(e=e.previousSibling)){if(e.nodeName>"@"){'+i+"break;}}e=N"+a+";";else if(r=n.match(h.relative))i=di?"var N"+a+"=e;e=e.parentNode.firstElementChild;while(e&&e!==N"+a+"){"+i+"e=e.nextElementSibling}e=N"+a+";":"var N"+a+"=e;e=e.parentNode.firstChild;while(e&&e!==N"+a+'){if(e.nodeName>"@"){'+i+"}e=e.nextSibling}e=N"+a+";";else if(r=n.match(h.children))i="var N"+a+"=e;if(e&&e!==h&&e!==g&&(e=e.parentNode)){"+i+"}e=N"+a+";";else if(r=n.match(h.ancestor))i="var N"+a+"=e;while(e&&e!==h&&e!==g&&(e=e.parentNode)){"+i+"}e=N"+a+";";else if((r=n.match(h.spseudos))&&r[1])switch(r[2]){case"root":i=r[7]?"if(e===h||s.contains(h,e)){"+i+"}":"if(e===h){"+i+"}";break;case"empty":i="if(s.isEmpty(e)){"+i+"}";break;default:if(r[2]&&r[6]){if(r[6]=="n"){i="if(e!==h){"+i+"}";break}else r[6]=="even"?(c=2,o=0):r[6]=="odd"?(c=2,o=1):(o=(y=r[6].match(/(-?\d+)$/))?parseInt(y[1],10):0,c=(y=r[6].match(/(-?\d*)n/))?parseInt(y[1],10):0,y&&y[1]=="-"&&(c=-1));v=o<1&&c>1?"(n-("+o+"))%"+c+"==0":c>1?r[3]=="last"?"(n-("+o+"))%"+c+"==0":"n>="+o+"&&(n-("+o+"))%"+c+"==0":c<-1?r[3]=="last"?"(n-("+o+"))%"+c+"==0":"n<="+o+"&&(n-("+o+"))%"+c+"==0":c===0?"n=="+o:r[3]=="last"?c==-1?"n>="+o:"n<="+o:c==-1?"n<="+o:"n>="+o,i="if(e!==h){n=s["+(r[5]?'"nthOfType"':'"nthElement"')+"](e,"+(r[3]=="last"?"true":"false")+");if("+v+"){"+i+"}}"}else c=r[3]=="first"?"previous":"next",y=r[3]=="only"?"previous":"next",o=r[3]=="first"||r[3]=="last",p=r[5]?"&&n.nodeName!=e.nodeName":'&&n.nodeName<"@"',i="if(e!==h){"+("n=e;while((n=n."+c+"Sibling)"+p+");if(!n){"+(o?i:"n=e;while((n=n."+y+"Sibling)"+p+");if(!n){"+i+"}")+"}")+"}"}else if((r=n.match(h.dpseudos))&&r[1])switch(r[1]){case"not":if(e=r[3].replace(et,""),f.SIMPLENOT&&!yr.test(e))return s('Negation pseudo-class only accepts simple selectors "'+n+'"'),"";i="compatMode"in t?"if(!"+ct([e],"",!1)+"(e,s,r,d,h,g)){"+i+"}":'if(!s.match(e, "'+e.replace(/\x22/g,'\\"')+'",g)){'+i+"}";break;case"checked":v='if((typeof e.form!="undefined"&&(/^(?:radio|checkbox)$/i).test(e.type)&&e.checked)',i=(f.USE_HTML5?v+"||(/^option$/i.test(e.nodeName)&&e.selected)":v)+"){"+i+"}";break;case"disabled":i='if(((typeof e.form!="undefined"&&!(/^hidden$/i).test(e.type))||s.isLink(e))&&e.disabled){'+i+"}";break;case"enabled":i='if(((typeof e.form!="undefined"&&!(/^hidden$/i).test(e.type))||s.isLink(e))&&!e.disabled){'+i+"}";break;case"lang":v="",r[3]&&(v=r[3].substr(0,2)+"-"),i='do{(n=e.lang||"").toLowerCase();if((n==""&&h.lang=="'+r[3].toLowerCase()+'")||(n&&(n=="'+r[3].toLowerCase()+'"||n.substr(0,3)=="'+v.toLowerCase()+'"))){'+i+"break;}}while((e=e.parentNode)&&e!==g);";break;case"target":y=t.location?t.location.hash:"",y&&(i='if(e.id=="'+y.slice(1)+'"){'+i+"}");break;case"link":i="if(s.isLink(e)&&!e.visited){"+i+"}";break;case"visited":i="if(s.isLink(e)&&e.visited){"+i+"}";break;case"active":if(u)break;i="if(e===d.activeElement){"+i+"}";break;case"hover":if(u)break;i="if(e===d.hoverElement){"+i+"}";break;case"focus":if(u)break;i=wr?"if(e===d.activeElement&&d.hasFocus()&&(e.type||e.href)){"+i+"}":"if(e===d.activeElement&&(e.type||e.href)){"+i+"}";break;case"selected":e=iu?"||(n=e.parentNode)&&n.options[n.selectedIndex]===e":"",i="if(/^option$/i.test(e.nodeName)&&(e.selected"+e+")){"+i+"}"}else{e=!1,b=!0;for(e in w)if((r=n.match(w[e].Expression))&&r[1]&&(k=w[e].Callback(r,i),i=k.source,b=k.status,b))break;if(!b)return s('Unknown pseudo-class selector "'+n+'"'),"";if(!e)return s('Unknown token in selector "'+n+'"'),""}if(!r)return s('Invalid syntax in selector "'+n+'"'),"";n=r&&r[r.length-1]}return i},ri=function(n,i,u,e){var o;if(n&&n.nodeName>"@")if(i&&typeof i=="string"){if(u&&u.nodeType==1&&!ni(u,n))return!1;pt!==u&&k(u||(u=n.ownerDocument))}else return s("Invalid selector argument"),!1;else return s("Invalid element argument"),!1;if(i=i.replace(et,""),f.SHORTCUTS&&(i=NW.Dom.shortcuts(i,n,u)),si!=i)if((o=i.match(ft))&&o[0]==i)oi=(o=i.match(dt)).length<2,si=i,ci=o;else return s('The string "'+i+'", is not a valid CSS selector'),!1;else o=ci;return at[i]&&ui[i]===u||(at[i]=ct(oi?[i]:o,"",!1),ui[i]=u),at[i](n,ei,[],t,r,u,e)},nf=function(n,t){return lt(n,t,function(){return!1})[0]||null},lt=function(n,o,h){var p,g,y,c,a,l,w=n;if(arguments.length===0)return s("Missing required selector parameters"),[];if(n==="")return s("Empty selector string"),[];if(typeof n!="string")return[];if(o&&!/1|9|11/.test(o.nodeType))return s("Invalid context element"),[];if(pt!==o&&k(o||(o=t)),f.CACHING&&(c=i.loadResults(w,o,t,r)))return h?or([],c,h):c;if(!ru&&eu.test(n))switch(n.charAt(0)){case"#":c=(y=nt(n.slice(1),o))?[y]:[];break;case".":c=tt(n.slice(1),o);break;default:c=v(n,o)}else if(!u&&f.USE_QSAPI&&!(rr&&fu.test(n))&&!uu.test(n))try{c=o.querySelectorAll(n)}catch(rt){}if(c)return c=h?or([],c,h):ki?it.call(c):er([],c),f.CACHING&&i.saveResults(w,o,t,c),c;if(n=n.replace(et,""),f.SHORTCUTS&&(n=NW.Dom.shortcuts(n,o)),g=hi!=n)if((a=n.match(ft))&&a[0]==n)yt=(a=n.match(dt)).length<2,hi=n,li=a;else return s('The string "'+n+'", is not a valid CSS selector'),[];else a=li;if(o.nodeType==11)c=o.childNodes;else if(!u&&yt){if(g&&(a=n.match(pr),l=a[a.length-1],d=l.split(":not")[0],e=n.length-l.length),(a=d.match(b.ID))&&(l=a[1])?(y=nt(l,o))&&(ri(y,n)?(h&&h(y),c=[y]):c=[]):(a=n.match(b.ID))&&(l=a[1])&&((y=nt(l,t))?("#"+l==n&&(h&&h(y),c=[y]),/[>+~]/.test(n)?o=y.parentNode:(n=n.replace("#"+l,"*"),e-=l.length+1,o=y)):c=[]),c)return f.CACHING&&i.saveResults(w,o,t,c),c;if(!st&&(a=d.match(b.TAG))&&(l=a[1])){if((c=v(l,o)).length===0)return[];n=n.slice(0,e)+n.slice(e).replace(l,"*")}else if((a=d.match(b.CLASS))&&(l=a[1])){if((c=tt(l,o)).length===0)return[];n=bi.test(n.charAt(n.indexOf(l)-1))?n.slice(0,e)+n.slice(e).replace("."+l,""):n.slice(0,e)+n.slice(e).replace("."+l,"*")}else if((a=n.match(b.CLASS))&&(l=a[1])){if((c=tt(l,o)).length===0)return[];for(p=0,els=[];c.length>p;++p)els=er(els,c[p].getElementsByTagName("*"));c=els,n=bi.test(n.charAt(n.indexOf(l)-1))?n.slice(0,e)+n.slice(e).replace("."+l,""):n.slice(0,e)+n.slice(e).replace("."+l,"*")}else if(st&&(a=d.match(b.TAG))&&(l=a[1])){if((c=v(l,o)).length===0)return[];n=n.slice(0,e)+n.slice(e).replace(l,"*")}}return c||(c=/^(?:applet|object)$/i.test(o.nodeName)?o.childNodes:v("*",o)),vt[n]&&fi[n]===o||(vt[n]=ct(yt?[n]:a,"",!0),fi[n]=o),c=vt[n](c,ei,[],t,r,o,h),f.CACHING&&i.saveResults(w,o,t,c),c},ui={},at={},fi={},vt={},ei={nthElement:ku,nthOfType:du,getAttribute:hr,hasAttribute:ti,byClass:tt,byName:sr,byTag:v,byId:nt,contains:ni,isEmpty:wu,isLink:bu,select:lt,match:ri};Tokens={prefixes:rt,encoding:o,operators:ai,whitespace:c,identifier:y,attributes:p,combinators:vi,pseudoclass:ut,pseudoparms:yi,quotedvalue:wt},i.ACCEPT_NODE=ii,i.emit=s,i.byId=lu,i.byTag=vu,i.byName=sr,i.byClass=pu,i.getAttribute=hr,i.hasAttribute=ti,i.match=ri,i.first=nf,i.select=lt,i.compile=ct,i.contains=ni,i.configure=gu,i.setCache=function(){return},i.loadResults=function(){return},i.saveResults=function(){return},i.shortcuts=function(n){return n},i.Config=f,i.Snapshot=ei,i.Operators=g,i.Selectors=w,i.Tokens=Tokens,i.registerOperator=function(n,t){g[n]||(g[n]=t)},i.registerSelector=function(n,t,i){w[n]||(w[n]={Expression:t,Callback:i})},k(t,!0)})(this);
/*!
 * selectivizr v1.0.2 - (c) Keith Clark, freely distributable under the terms of the MIT license.
 * selectivizr.com
 */
(function(n){function d(n){return n.replace(ht,u).replace(ct,function(n,t,r){for(var e,f,n=r.split(","),r=0,o=n.length;r<o;r++)e=nt(n[r].replace(wt,u).replace(bt,u))+c,f=[],n[r]=e.replace(lt,function(n,t,r,u,o){var n,h,o,s;if(t){if(f.length>0){n=f,o=e.substring(0,o).replace(at,i),(o==i||o.charAt(o.length-1)==c)&&(o+="*");try{h=w(o)}catch(k){}if(h)for(o=0,r=h.length;o<r;o++){for(var u=h[o],l=u.className,y=0,p=n.length;y<p;y++)s=n[y],!RegExp("(^|\\s)"+s.className+"(\\s|$)").test(u.className)&&s.b&&(s.b===!0||s.b(u)===!0)&&(l=v(l,s.className,!0));u.className=l}f=[]}return t}return(t=r?g(r):!b||b.test(u)?{className:a(u),b:!0}:null)?(f.push(t),"."+t.className):n});return t+n.join(",")})}function g(t){var e=!0,c=a(t.slice(1)),u=t.substring(0,5)==":not(",l,v,y;if(u&&(t=t.slice(5,-1)),y=t.indexOf("("),y>-1&&(t=t.substring(0,y)),t.charAt(0)==":")switch(t.slice(1)){case"root":e=function(n){return u?n!=s:n==s};break;case"target":if(o==8){e=function(t){function e(){var n=location.hash,r=n.slice(1);return u?n==i||t.id!=r:n!=i&&t.id==r}return r(n,"hashchange",function(){f(t,c,e())}),e()};break}return!1;case"checked":e=function(n){return pt.test(n.type)&&r(n,"propertychange",function(){event.propertyName=="checked"&&f(n,c,n.checked!==u)}),n.checked!==u};break;case"disabled":u=!u;case"enabled":e=function(n){return yt.test(n.tagName)?(r(n,"propertychange",function(){event.propertyName=="$disabled"&&f(n,c,n.a===u)}),h.push(n),n.a=n.disabled,n.disabled===u):t==":enabled"?u:!u};break;case"focus":l="focus",v="blur";case"hover":l||(l="mouseenter",v="mouseleave"),e=function(n){return r(n,u?v:l,function(){f(n,c,!0)}),r(n,u?l:v,function(){f(n,c,!1)}),u};break;default:if(!st.test(t))return!1}return{className:c,b:e}}function a(n){return ut+"-"+(o==6&&rt?it++:n.replace(vt,function(n){return n.charCodeAt(0)}))}function nt(n){return n.replace(k,u).replace(kt,c)}function f(n,t,r){var u=n.className,t=v(u,t,r);t!=u&&(n.className=t,n.parentNode.className+=i)}function v(n,t,i){var r=RegExp("(^|\\s)"+t+"(\\s|$)"),f=r.test(n);return i?f?n:n+c+t:f?n.replace(r,u).replace(k,u):n}function r(n,t,i){n.attachEvent("on"+t,i)}function l(n,t){if(/^https?:\/\//i.test(n))return t.substring(0,t.indexOf("/",8))==n.substring(0,n.indexOf("/",8))?n:null;if(n.charAt(0)=="/")return t.substring(0,t.indexOf("/",8))+n;var i=t.split(/[?#]/)[0];return n.charAt(0)!="?"&&i.charAt(i.length-1)!="/"&&(i=i.substring(0,i.lastIndexOf("/")+1)),i+n}function y(n){return n?(e.open("GET",n,!1),e.send(),(e.status==200?e.responseText:i).replace(ft,i).replace(et,function(t,i,r,u,f){return y(l(r||f,n))}).replace(ot,function(t,r,u){return r=r||i," url("+r+l(u,n)+r+") "})):i}function tt(){var n,r,f,u;for(n=t.getElementsByTagName("BASE"),f=n.length>0?n[0].href:t.location.href,u=0;u<t.styleSheets.length;u++)(r=t.styleSheets[u],r.href!=i&&(n=l(r.href,f)))&&(r.cssText=d(y(n)));h.length>0&&setInterval(function(){for(var n,t=0,i=h.length;t<i;t++)n=h[t],n.disabled!==n.a&&(n.disabled?(n.disabled=!1,n.a=!0,n.disabled=!0):n.a=n.disabled)},250)}if(!/*@cc_on!@*/!0){var t=document,s=t.documentElement,e=function(){if(n.XMLHttpRequest)return new XMLHttpRequest;try{return new ActiveXObject("Microsoft.XMLHTTP")}catch(t){return null}}(),o=/MSIE (\d+)/.exec(navigator.userAgent)[1];if(!(t.compatMode!="CSS1Compat"||o<6||o>8||!e)){var p={NW:"*.Dom.select",MooTools:"$$",DOMAssistant:"*.$",Prototype:"$$",YAHOO:"*.util.Selector.query",Sizzle:"*",jQuery:"*",dojo:"*.query"},w,h=[],it=0,rt=!0,ut="slvzr",ft=/(\/\*[^*]*\*+([^\/][^*]*\*+)*\/)\s*/g,et=/@import\s*(?:(?:(?:url\(\s*(['"]?)(.*)\1)\s*\))|(?:(['"])(.*)\3))[^;]*;/g,ot=/\burl\(\s*(["']?)(?!data:)([^"')]+)\1\s*\)/g,st=/^:(empty|(first|last|only|nth(-last)?)-(child|of-type))$/,ht=/:(:first-(?:line|letter))/g,ct=/(^|})\s*([^\{]*?[\[:][^{]+)/g,lt=/([ +~>])|(:[a-z-]+(?:\(.*?\)+)?)|(\[.*?\])/g,at=/(:not\()?:(hover|enabled|disabled|focus|checked|target|active|visited|first-line|first-letter)\)?/g,vt=/[^\w-]/g,yt=/^(INPUT|SELECT|TEXTAREA|BUTTON)$/,pt=/^(checkbox|radio)$/,b=o>6?/[\$\^*]=(['"])\1/:null,wt=/([(\[+~])\s+/g,bt=/\s+([)\]+~])/g,kt=/\s+/g,k=/^\s*((?:[\S\s]*\S)?)\s*$/,i="",c=" ",u="$1";(function(n,u){function e(){try{s.doScroll("left")}catch(n){setTimeout(e,50);return}f("poll")}function f(i){i.type=="readystatechange"&&t.readyState!="complete"||((i.type=="load"?n:t).detachEvent("on"+i.type,f,!1),o||!(o=!0))||u.call(n,i.type||i)}var o=!1,h=!0;if(t.readyState=="complete")u.call(n,i);else{if(t.createEventObject&&s.doScroll){try{h=!n.frameElement}catch(c){}h&&e()}r(t,"readystatechange",f),r(n,"load",f)}})(n,function(){var i,r,u,t;for(i in p)if(t=n,n[i]){for(r=p[i].replace("*",i).split(".");(u=r.shift())&&(t=t[u]););if(typeof t=="function"){w=t,tt();break}}})}}})(this)
;

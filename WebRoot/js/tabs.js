   function showTab(tabHeadId,tabContentId,current_index){

            var tabDiv = document.getElementById("tabDiv");

            //将tab层中所有的内容层设为不可见

            //遍历tab层下的所有子节点

            var taContents = tabDiv.childNodes;

            for(i=0; i<taContents.length; i++)

            {

                //将所有内容层都设为不可见

                if(taContents[i].id!=null && taContents[i].id != 'tabsHolder')

                {

                    taContents[i].style.display = 'none';

                }

            }
           //将要显示的层设为可见

            document.getElementById(tabContentId).style.display = 'block';
            //遍历tab头中所有的超链接

            var tabHeads = document.getElementById('tabsHolder').getElementsByTagName('img');
            var arr=["newSeek","newGet","leifeng"];//浅色的
            var arr_2=["newSeek2","newGet2","leifeng2"];//深色的

            for(i=0; i<tabHeads.length; i++)//所有img集合
            {

                //将超链接的样式设为未选的tab头样式

                tabHeads[i].src="images/"+arr[i]+".gif";//所有的换成深色

            }

            //将当前超链接的样式设为已选tab头样式
            var cur=document.getElementById(tabHeadId).getElementsByTagName('img');//是个集合
            //alert(cur);
            cur[0].src="images/"+arr_2[current_index]+".gif";//当前的换成浅色

            document.getElementById(tabHeadId).blur();

        }
		
		
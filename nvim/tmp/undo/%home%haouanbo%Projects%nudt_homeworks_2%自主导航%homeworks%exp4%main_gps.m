Vim�UnDo� 6$Uh�h��=����এV�N�	��ې��,   �                                  `�Xe   * _�                     �        ����                                                                                                                                                                                                                                                                                                                                                             `�V�     �   �   �          )    %迭代法求解用户位置与钟差5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                             `�V�     �   �   �   �    �   �   �   �    5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                             `�V�    �   �   �   �      )    %迭代法求解用户位置与钟差5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                             `�V�    �   �   �   �      .    % === 迭代法求解用户位置与钟差5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                             `�V�     �   �   �   �          5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                             `�V�     �   �   �   �      .    Uposini=zeros(1,3); %用户位置初始化5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                             `�V�    �   �   �   �          5�_�      	              t        ����                                                                                                                                                                                                                                                                                                                            t          w          V       `�W*    �   s   t          >    %计算卫星的位置、速度、钟差、钟差漂移率   `    %     [satpos,satvel,satdt,satddt] = Sat_Pos_V(ephdata_sort,ptrltime ,gpstime(kf),sat_num );   )    %     satdt=satdt*C; %转换为距离       %     satddt=satddt*C;5�_�      
           	   t       ����                                                                                                                                                                                                                                                                                                                            t          t          V       `�W+   	 �   s   t              5�_�   	              
   q       ����                                                                                                                                                                                                                                                                                                                            r          q          V       `�W/   
 �   p   q          2    %得到对应观测数据顺序的星历数据   M    ephdata_sort=eph_sort(userdata(kf).gpsdata(1:sat_num,1),ephdata,sat_num);5�_�   
                 q       ����                                                                                                                                                                                                                                                                                                                            q          q          V       `�W0    �   p   q              5�_�                    �       ����                                                                                                                                                                                                                                                                                                                            y   &       y   @       v   @    `�WM     �   �   �   �      1            b(i,1)=prange(i)-r+satdt(i)-delta_tu;�   �   �   �    5�_�                    �   .    ����                                                                                                                                                                                                                                                                                                                            �   .       �   5       v   5    `�WP     �   �   �   �      L            b(i,1)=userdata(kf).gpsdata(i,2)/Cprange(i)-r+satdt(i)-delta_tu;5�_�                    �   .    ����                                                                                                                                                                                                                                                                                                                            �   .       �   5       v   5    `�WQ    �   �   �   �      D            b(i,1)=userdata(kf).gpsdata(i,2)/C)-r+satdt(i)-delta_tu;5�_�                    �       ����                                                                                                                                                                                                                                                                                                                            �   .       �   5       v   5    `�W�    �   �   �              5�_�                    �       ����                                                                                                                                                                                                                                                                                                                            �   .       �   5       v   5    `�W�     �   �   �   �          for k=1:count5�_�                    �       ����                                                                                                                                                                                                                                                                                                                            �          �          v       `�X     �   �   �   �          count=20; %迭代次数       5�_�                    �       ����                                                                                                                                                                                                                                                                                                                            �          �          v       `�X     �   �   �   �          for k=1:20 �   �   �   �    5�_�                    �        ����                                                                                                                                                                                                                                                                                                                            �          �          v       `�X     �   �   �           5�_�                    �       ����                                                                                                                                                                                                                                                                                                                            �          �          v       `�X    �   �   �              count=20;     5�_�                    �       ����                                                                                                                                                                                                                                                                                                                            �          �          v       `�X    �   �   �   �          for k=1:20 %迭代次数5�_�                    �       ����                                                                                                                                                                                                                                                                                                                            x          x   $       v   $    `�X4     �   �   �   �              for i=1:sat_num�   �   �   �    5�_�                    �        ����                                                                                                                                                                                                                                                                                                                            x          x   $       v   $    `�X6    �   �   �          sat_num5�_�                     �       ����                                                                                                                                                                                                                                                                                                                            x          x   $       v   $    `�Xd   * �   �   �          u    [Upos(kf,:),delta_tu]=User_Pos_cal(Uposini,Udtini,count,prange,satpos,satdt,sat_num);%计算用户位置、钟差5��
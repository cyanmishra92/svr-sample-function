<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<!DOCTYPE boost_serialization>
<boost_serialization signature="serialization::archive" version="15">
<syndb class_id="0" tracking_level="0" version="0">
	<userIPLatency>-1</userIPLatency>
	<userIPName></userIPName>
	<cdfg class_id="1" tracking_level="1" version="0" object_id="_0">
		<name>addsub</name>
		<ret_bitwidth>44</ret_bitwidth>
		<ports class_id="2" tracking_level="0" version="0">
			<count>3</count>
			<item_version>0</item_version>
			<item class_id="3" tracking_level="1" version="0" object_id="_1">
				<Value class_id="4" tracking_level="0" version="0">
					<Obj class_id="5" tracking_level="0" version="0">
						<type>1</type>
						<id>1</id>
						<name>a_V</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo class_id="6" tracking_level="0" version="0">
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>__Val2__</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>43</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs class_id="7" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_2">
				<Value>
					<Obj>
						<type>1</type>
						<id>2</id>
						<name>b_V</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>__Val2__</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>43</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_3">
				<Value>
					<Obj>
						<type>1</type>
						<id>3</id>
						<name>add</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>add</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>1</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
		</ports>
		<nodes class_id="8" tracking_level="0" version="0">
			<count>9</count>
			<item_version>0</item_version>
			<item class_id="9" tracking_level="1" version="0" object_id="_4">
				<Value>
					<Obj>
						<type>0</type>
						<id>4</id>
						<name>add_read</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>add</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>1</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>16</item>
					<item>17</item>
				</oprand_edges>
				<opcode>read</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_delay>0.00</m_delay>
			</item>
			<item class_id_reference="9" object_id="_5">
				<Value>
					<Obj>
						<type>0</type>
						<id>5</id>
						<name>b_V_read</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>43</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>19</item>
					<item>20</item>
				</oprand_edges>
				<opcode>read</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_delay>0.00</m_delay>
			</item>
			<item class_id_reference="9" object_id="_6">
				<Value>
					<Obj>
						<type>0</type>
						<id>6</id>
						<name>a_V_read</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>43</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>21</item>
					<item>22</item>
				</oprand_edges>
				<opcode>read</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_delay>0.00</m_delay>
			</item>
			<item class_id_reference="9" object_id="_7">
				<Value>
					<Obj>
						<type>0</type>
						<id>8</id>
						<name>tmp</name>
						<fileName>/wrk/2018.2/continuous/2018_06_14_2258646/src/products/hls/hls_lib/hlsmath/include/FloatingPoint/hls_cordic.h</fileName>
						<fileDirectory>/wrk/2018.2/continuous/2018_06_14_2258646/src/products</fileDirectory>
						<lineNumber>126</lineNumber>
						<contextFuncName>addsub&amp;lt;0, 0, ap_fixed&amp;lt;43, 4, 5, 3, 0&amp;gt;, ap_fixed&amp;lt;43, 4, 5, 3, 0&amp;gt;, bool&amp;gt;</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id="11" tracking_level="0" version="0">
								<first>/wrk/2018.2/continuous/2018_06_14_2258646/src/products</first>
								<second class_id="12" tracking_level="0" version="0">
									<count>1</count>
									<item_version>0</item_version>
									<item class_id="13" tracking_level="0" version="0">
										<first class_id="14" tracking_level="0" version="0">
											<first>/wrk/2018.2/continuous/2018_06_14_2258646/src/products/hls/hls_lib/hlsmath/include/FloatingPoint/hls_cordic.h</first>
											<second>addsub&amp;lt;0, 0, ap_fixed&amp;lt;43, 4, 5, 3, 0&amp;gt;, ap_fixed&amp;lt;43, 4, 5, 3, 0&amp;gt;, bool&amp;gt;</second>
										</first>
										<second>126</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>44</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>23</item>
				</oprand_edges>
				<opcode>sext</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_delay>0.00</m_delay>
			</item>
			<item class_id_reference="9" object_id="_8">
				<Value>
					<Obj>
						<type>0</type>
						<id>9</id>
						<name>tmp_s</name>
						<fileName>/wrk/2018.2/continuous/2018_06_14_2258646/src/products/hls/hls_lib/hlsmath/include/FloatingPoint/hls_cordic.h</fileName>
						<fileDirectory>/wrk/2018.2/continuous/2018_06_14_2258646/src/products</fileDirectory>
						<lineNumber>126</lineNumber>
						<contextFuncName>addsub&amp;lt;0, 0, ap_fixed&amp;lt;43, 4, 5, 3, 0&amp;gt;, ap_fixed&amp;lt;43, 4, 5, 3, 0&amp;gt;, bool&amp;gt;</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/wrk/2018.2/continuous/2018_06_14_2258646/src/products</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/wrk/2018.2/continuous/2018_06_14_2258646/src/products/hls/hls_lib/hlsmath/include/FloatingPoint/hls_cordic.h</first>
											<second>addsub&amp;lt;0, 0, ap_fixed&amp;lt;43, 4, 5, 3, 0&amp;gt;, ap_fixed&amp;lt;43, 4, 5, 3, 0&amp;gt;, bool&amp;gt;</second>
										</first>
										<second>126</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>44</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>24</item>
				</oprand_edges>
				<opcode>sext</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_delay>0.00</m_delay>
			</item>
			<item class_id_reference="9" object_id="_9">
				<Value>
					<Obj>
						<type>0</type>
						<id>10</id>
						<name>r_V_2</name>
						<fileName>/wrk/2018.2/continuous/2018_06_14_2258646/src/products/hls/hls_lib/hlsmath/include/FloatingPoint/hls_cordic.h</fileName>
						<fileDirectory>/wrk/2018.2/continuous/2018_06_14_2258646/src/products</fileDirectory>
						<lineNumber>128</lineNumber>
						<contextFuncName>addsub&amp;lt;0, 0, ap_fixed&amp;lt;43, 4, 5, 3, 0&amp;gt;, ap_fixed&amp;lt;43, 4, 5, 3, 0&amp;gt;, bool&amp;gt;</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/wrk/2018.2/continuous/2018_06_14_2258646/src/products</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/wrk/2018.2/continuous/2018_06_14_2258646/src/products/hls/hls_lib/hlsmath/include/FloatingPoint/hls_cordic.h</first>
											<second>addsub&amp;lt;0, 0, ap_fixed&amp;lt;43, 4, 5, 3, 0&amp;gt;, ap_fixed&amp;lt;43, 4, 5, 3, 0&amp;gt;, bool&amp;gt;</second>
										</first>
										<second>128</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>r.V</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>44</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>25</item>
					<item>26</item>
				</oprand_edges>
				<opcode>sub</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_delay>2.96</m_delay>
			</item>
			<item class_id_reference="9" object_id="_10">
				<Value>
					<Obj>
						<type>0</type>
						<id>11</id>
						<name>r_V</name>
						<fileName>/wrk/2018.2/continuous/2018_06_14_2258646/src/products/hls/hls_lib/hlsmath/include/FloatingPoint/hls_cordic.h</fileName>
						<fileDirectory>/wrk/2018.2/continuous/2018_06_14_2258646/src/products</fileDirectory>
						<lineNumber>126</lineNumber>
						<contextFuncName>addsub&amp;lt;0, 0, ap_fixed&amp;lt;43, 4, 5, 3, 0&amp;gt;, ap_fixed&amp;lt;43, 4, 5, 3, 0&amp;gt;, bool&amp;gt;</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/wrk/2018.2/continuous/2018_06_14_2258646/src/products</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/wrk/2018.2/continuous/2018_06_14_2258646/src/products/hls/hls_lib/hlsmath/include/FloatingPoint/hls_cordic.h</first>
											<second>addsub&amp;lt;0, 0, ap_fixed&amp;lt;43, 4, 5, 3, 0&amp;gt;, ap_fixed&amp;lt;43, 4, 5, 3, 0&amp;gt;, bool&amp;gt;</second>
										</first>
										<second>126</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>r.V</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>44</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>27</item>
					<item>28</item>
				</oprand_edges>
				<opcode>add</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_delay>2.96</m_delay>
			</item>
			<item class_id_reference="9" object_id="_11">
				<Value>
					<Obj>
						<type>0</type>
						<id>12</id>
						<name>r_V_10</name>
						<fileName>/wrk/2018.2/continuous/2018_06_14_2258646/src/products/hls/hls_lib/hlsmath/include/FloatingPoint/hls_cordic.h</fileName>
						<fileDirectory>/wrk/2018.2/continuous/2018_06_14_2258646/src/products</fileDirectory>
						<lineNumber>125</lineNumber>
						<contextFuncName>addsub&amp;lt;0, 0, ap_fixed&amp;lt;43, 4, 5, 3, 0&amp;gt;, ap_fixed&amp;lt;43, 4, 5, 3, 0&amp;gt;, bool&amp;gt;</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/wrk/2018.2/continuous/2018_06_14_2258646/src/products</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/wrk/2018.2/continuous/2018_06_14_2258646/src/products/hls/hls_lib/hlsmath/include/FloatingPoint/hls_cordic.h</first>
											<second>addsub&amp;lt;0, 0, ap_fixed&amp;lt;43, 4, 5, 3, 0&amp;gt;, ap_fixed&amp;lt;43, 4, 5, 3, 0&amp;gt;, bool&amp;gt;</second>
										</first>
										<second>125</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>r.V</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>44</bitwidth>
				</Value>
				<oprand_edges>
					<count>3</count>
					<item_version>0</item_version>
					<item>29</item>
					<item>30</item>
					<item>31</item>
				</oprand_edges>
				<opcode>select</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_delay>1.26</m_delay>
			</item>
			<item class_id_reference="9" object_id="_12">
				<Value>
					<Obj>
						<type>0</type>
						<id>13</id>
						<name></name>
						<fileName>/wrk/2018.2/continuous/2018_06_14_2258646/src/products/hls/hls_lib/hlsmath/include/FloatingPoint/hls_cordic.h</fileName>
						<fileDirectory>/wrk/2018.2/continuous/2018_06_14_2258646/src/products</fileDirectory>
						<lineNumber>130</lineNumber>
						<contextFuncName>addsub&amp;lt;0, 0, ap_fixed&amp;lt;43, 4, 5, 3, 0&amp;gt;, ap_fixed&amp;lt;43, 4, 5, 3, 0&amp;gt;, bool&amp;gt;</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/wrk/2018.2/continuous/2018_06_14_2258646/src/products</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/wrk/2018.2/continuous/2018_06_14_2258646/src/products/hls/hls_lib/hlsmath/include/FloatingPoint/hls_cordic.h</first>
											<second>addsub&amp;lt;0, 0, ap_fixed&amp;lt;43, 4, 5, 3, 0&amp;gt;, ap_fixed&amp;lt;43, 4, 5, 3, 0&amp;gt;, bool&amp;gt;</second>
										</first>
										<second>130</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>32</item>
				</oprand_edges>
				<opcode>ret</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_delay>0.00</m_delay>
			</item>
		</nodes>
		<consts class_id="15" tracking_level="0" version="0">
			<count>0</count>
			<item_version>0</item_version>
		</consts>
		<blocks class_id="16" tracking_level="0" version="0">
			<count>1</count>
			<item_version>0</item_version>
			<item class_id="17" tracking_level="1" version="0" object_id="_13">
				<Obj>
					<type>3</type>
					<id>14</id>
					<name>addsub</name>
					<fileName></fileName>
					<fileDirectory></fileDirectory>
					<lineNumber>0</lineNumber>
					<contextFuncName></contextFuncName>
					<inlineStackInfo>
						<count>0</count>
						<item_version>0</item_version>
					</inlineStackInfo>
					<originalName></originalName>
					<rtlName></rtlName>
					<coreName></coreName>
				</Obj>
				<node_objs>
					<count>9</count>
					<item_version>0</item_version>
					<item>4</item>
					<item>5</item>
					<item>6</item>
					<item>8</item>
					<item>9</item>
					<item>10</item>
					<item>11</item>
					<item>12</item>
					<item>13</item>
				</node_objs>
			</item>
		</blocks>
		<edges class_id="18" tracking_level="0" version="0">
			<count>13</count>
			<item_version>0</item_version>
			<item class_id="19" tracking_level="1" version="0" object_id="_14">
				<id>17</id>
				<edge_type>1</edge_type>
				<source_obj>3</source_obj>
				<sink_obj>4</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="19" object_id="_15">
				<id>20</id>
				<edge_type>1</edge_type>
				<source_obj>2</source_obj>
				<sink_obj>5</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="19" object_id="_16">
				<id>22</id>
				<edge_type>1</edge_type>
				<source_obj>1</source_obj>
				<sink_obj>6</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="19" object_id="_17">
				<id>23</id>
				<edge_type>1</edge_type>
				<source_obj>6</source_obj>
				<sink_obj>8</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="19" object_id="_18">
				<id>24</id>
				<edge_type>1</edge_type>
				<source_obj>5</source_obj>
				<sink_obj>9</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="19" object_id="_19">
				<id>25</id>
				<edge_type>1</edge_type>
				<source_obj>8</source_obj>
				<sink_obj>10</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="19" object_id="_20">
				<id>26</id>
				<edge_type>1</edge_type>
				<source_obj>9</source_obj>
				<sink_obj>10</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="19" object_id="_21">
				<id>27</id>
				<edge_type>1</edge_type>
				<source_obj>9</source_obj>
				<sink_obj>11</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="19" object_id="_22">
				<id>28</id>
				<edge_type>1</edge_type>
				<source_obj>8</source_obj>
				<sink_obj>11</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="19" object_id="_23">
				<id>29</id>
				<edge_type>1</edge_type>
				<source_obj>4</source_obj>
				<sink_obj>12</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="19" object_id="_24">
				<id>30</id>
				<edge_type>1</edge_type>
				<source_obj>11</source_obj>
				<sink_obj>12</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="19" object_id="_25">
				<id>31</id>
				<edge_type>1</edge_type>
				<source_obj>10</source_obj>
				<sink_obj>12</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="19" object_id="_26">
				<id>32</id>
				<edge_type>1</edge_type>
				<source_obj>12</source_obj>
				<sink_obj>13</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
		</edges>
	</cdfg>
	<cdfg_regions class_id="20" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="21" tracking_level="1" version="0" object_id="_27">
			<mId>1</mId>
			<mTag>addsub</mTag>
			<mType>0</mType>
			<sub_regions>
				<count>0</count>
				<item_version>0</item_version>
			</sub_regions>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>14</item>
			</basic_blocks>
			<mII>1</mII>
			<mDepth>1</mDepth>
			<mMinTripCount>-1</mMinTripCount>
			<mMaxTripCount>-1</mMaxTripCount>
			<mMinLatency>0</mMinLatency>
			<mMaxLatency>0</mMaxLatency>
			<mIsDfPipe>0</mIsDfPipe>
			<mDfPipe class_id="-1"></mDfPipe>
		</item>
	</cdfg_regions>
	<fsm class_id="23" tracking_level="1" version="0" object_id="_28">
		<states class_id="24" tracking_level="0" version="0">
			<count>1</count>
			<item_version>0</item_version>
			<item class_id="25" tracking_level="1" version="0" object_id="_29">
				<id>1</id>
				<operations class_id="26" tracking_level="0" version="0">
					<count>10</count>
					<item_version>0</item_version>
					<item class_id="27" tracking_level="1" version="0" object_id="_30">
						<id>4</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="27" object_id="_31">
						<id>5</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="27" object_id="_32">
						<id>6</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="27" object_id="_33">
						<id>7</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="27" object_id="_34">
						<id>8</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="27" object_id="_35">
						<id>9</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="27" object_id="_36">
						<id>10</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="27" object_id="_37">
						<id>11</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="27" object_id="_38">
						<id>12</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="27" object_id="_39">
						<id>13</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
				</operations>
			</item>
		</states>
		<transitions class_id="28" tracking_level="0" version="0">
			<count>0</count>
			<item_version>0</item_version>
		</transitions>
	</fsm>
	<res class_id="-1"></res>
	<node_label_latency class_id="30" tracking_level="0" version="0">
		<count>9</count>
		<item_version>0</item_version>
		<item class_id="31" tracking_level="0" version="0">
			<first>4</first>
			<second class_id="32" tracking_level="0" version="0">
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>5</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>6</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>8</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>9</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>10</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>11</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>12</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>13</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
	</node_label_latency>
	<bblk_ent_exit class_id="33" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="34" tracking_level="0" version="0">
			<first>14</first>
			<second class_id="35" tracking_level="0" version="0">
				<first>0</first>
				<second>0</second>
			</second>
		</item>
	</bblk_ent_exit>
	<regions class_id="36" tracking_level="0" version="0">
		<count>2</count>
		<item_version>0</item_version>
		<item class_id="37" tracking_level="1" version="0" object_id="_40">
			<region_name>addsub</region_name>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>14</item>
			</basic_blocks>
			<nodes>
				<count>10</count>
				<item_version>0</item_version>
				<item>4</item>
				<item>5</item>
				<item>6</item>
				<item>7</item>
				<item>8</item>
				<item>9</item>
				<item>10</item>
				<item>11</item>
				<item>12</item>
				<item>13</item>
			</nodes>
			<anchor_node>-1</anchor_node>
			<region_type>2</region_type>
			<interval>0</interval>
			<pipe_depth>0</pipe_depth>
		</item>
		<item class_id_reference="37" object_id="_41">
			<region_name>addsub</region_name>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>14</item>
			</basic_blocks>
			<nodes>
				<count>0</count>
				<item_version>0</item_version>
			</nodes>
			<anchor_node>-1</anchor_node>
			<region_type>8</region_type>
			<interval>1</interval>
			<pipe_depth>1</pipe_depth>
		</item>
	</regions>
	<dp_fu_nodes class_id="38" tracking_level="0" version="0">
		<count>8</count>
		<item_version>0</item_version>
		<item class_id="39" tracking_level="0" version="0">
			<first>16</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>4</item>
			</second>
		</item>
		<item>
			<first>22</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>5</item>
			</second>
		</item>
		<item>
			<first>28</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>6</item>
			</second>
		</item>
		<item>
			<first>34</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>8</item>
			</second>
		</item>
		<item>
			<first>38</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>9</item>
			</second>
		</item>
		<item>
			<first>42</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>10</item>
			</second>
		</item>
		<item>
			<first>48</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>11</item>
			</second>
		</item>
		<item>
			<first>54</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>12</item>
			</second>
		</item>
	</dp_fu_nodes>
	<dp_fu_nodes_expression class_id="41" tracking_level="0" version="0">
		<count>5</count>
		<item_version>0</item_version>
		<item class_id="42" tracking_level="0" version="0">
			<first>r_V_10_fu_54</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>12</item>
			</second>
		</item>
		<item>
			<first>r_V_2_fu_42</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>10</item>
			</second>
		</item>
		<item>
			<first>r_V_fu_48</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>11</item>
			</second>
		</item>
		<item>
			<first>tmp_fu_34</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>8</item>
			</second>
		</item>
		<item>
			<first>tmp_s_fu_38</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>9</item>
			</second>
		</item>
	</dp_fu_nodes_expression>
	<dp_fu_nodes_module>
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_module>
	<dp_fu_nodes_io>
		<count>3</count>
		<item_version>0</item_version>
		<item>
			<first>a_V_read_read_fu_28</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>6</item>
			</second>
		</item>
		<item>
			<first>add_read_read_fu_16</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>4</item>
			</second>
		</item>
		<item>
			<first>b_V_read_read_fu_22</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>5</item>
			</second>
		</item>
	</dp_fu_nodes_io>
	<return_ports>
		<count>0</count>
		<item_version>0</item_version>
	</return_ports>
	<dp_mem_port_nodes class_id="43" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_mem_port_nodes>
	<dp_reg_nodes>
		<count>0</count>
		<item_version>0</item_version>
	</dp_reg_nodes>
	<dp_regname_nodes>
		<count>0</count>
		<item_version>0</item_version>
	</dp_regname_nodes>
	<dp_reg_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_reg_phi>
	<dp_regname_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_regname_phi>
	<dp_port_io_nodes class_id="44" tracking_level="0" version="0">
		<count>3</count>
		<item_version>0</item_version>
		<item class_id="45" tracking_level="0" version="0">
			<first>a_V</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>
					<first>read</first>
					<second>
						<count>1</count>
						<item_version>0</item_version>
						<item>6</item>
					</second>
				</item>
			</second>
		</item>
		<item>
			<first>add</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>
					<first>read</first>
					<second>
						<count>1</count>
						<item_version>0</item_version>
						<item>4</item>
					</second>
				</item>
			</second>
		</item>
		<item>
			<first>b_V</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>
					<first>read</first>
					<second>
						<count>1</count>
						<item_version>0</item_version>
						<item>5</item>
					</second>
				</item>
			</second>
		</item>
	</dp_port_io_nodes>
	<port2core class_id="46" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</port2core>
	<node2core>
		<count>0</count>
		<item_version>0</item_version>
	</node2core>
</syndb>
</boost_serialization>


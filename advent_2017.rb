class AdventSeventeen
    def digits_match(input)
        result = 0
        input_arr = input.split("")
        input_arr.each_with_index do |digit, index|
            if index == (input_arr.size - 1)
                if digit == input_arr.first
                    result = result + digit.to_i
                end
            else
                if digit == input_arr[index + 1]
                    result = result + digit.to_i
                end
            end
        end
    
        result
    end

    def halfway_digits_match(input)
        result = 0
        input_arr = input.split("")
        halfway = input_arr.size/2
        
        input_arr.each_with_index do |digit, index|
            if index >= halfway
                if digit == input_arr[index - halfway]
                    result = result + digit.to_i
                end
            else
                if digit == input_arr[halfway + index]
                    result = result + digit.to_i
                end
            end
        end

        result
    end

    def checksum
        spread = ["179	2358	5197	867	163	4418	3135	5049	187	166	4682	5080	5541	172	4294	1397",
        "2637	136	3222	591	2593	1982	4506	195	4396	3741	2373	157	4533	3864	4159	142",
        "1049	1163	1128	193	1008	142	169	168	165	310	1054	104	1100	761	406	173",
        "200	53	222	227	218	51	188	45	98	194	189	42	50	105	46	176",
        "299	2521	216	2080	2068	2681	2376	220	1339	244	605	1598	2161	822	387	268",
        "1043	1409	637	1560	970	69	832	87	78	1391	1558	75	1643	655	1398	1193",
        "90	649	858	2496	1555	2618	2302	119	2675	131	1816	2356	2480	603	65	128",
        "2461	5099	168	4468	5371	2076	223	1178	194	5639	890	5575	1258	5591	6125	226",
        "204	205	2797	2452	2568	2777	1542	1586	241	836	3202	2495	197	2960	240	2880",
        "560	96	336	627	546	241	191	94	368	528	298	78	76	123	240	563",
        "818	973	1422	244	1263	200	1220	208	1143	627	609	274	130	961	685	1318",
        "1680	1174	1803	169	450	134	3799	161	2101	3675	133	4117	3574	4328	3630	4186",
        "1870	3494	837	115	1864	3626	24	116	2548	1225	3545	676	128	1869	3161	109",
        "890	53	778	68	65	784	261	682	563	781	360	382	790	313	785	71",
        "125	454	110	103	615	141	562	199	340	80	500	473	221	573	108	536",
        "1311	64	77	1328	1344	1248	1522	51	978	1535	1142	390	81	409	68	352"]

        sum_diff = 0
        spread.each do |row|
            arr_row = row.split("\t")
            min_val = arr_row.first.to_i
            max_val = arr_row.first.to_i

            arr_row.each do |element|
                max_val = element.to_i if element.to_i >  max_val
                min_val = element.to_i if element.to_i <  min_val
            end

            diff = max_val - min_val
            sum_diff = sum_diff + diff
        end

        sum_diff
    end

    def checksum_evenly
        spread = ["179	2358	5197	867	163	4418	3135	5049	187	166	4682	5080	5541	172	4294	1397",
        "2637	136	3222	591	2593	1982	4506	195	4396	3741	2373	157	4533	3864	4159	142",
        "1049	1163	1128	193	1008	142	169	168	165	310	1054	104	1100	761	406	173",
        "200	53	222	227	218	51	188	45	98	194	189	42	50	105	46	176",
        "299	2521	216	2080	2068	2681	2376	220	1339	244	605	1598	2161	822	387	268",
        "1043	1409	637	1560	970	69	832	87	78	1391	1558	75	1643	655	1398	1193",
        "90	649	858	2496	1555	2618	2302	119	2675	131	1816	2356	2480	603	65	128",
        "2461	5099	168	4468	5371	2076	223	1178	194	5639	890	5575	1258	5591	6125	226",
        "204	205	2797	2452	2568	2777	1542	1586	241	836	3202	2495	197	2960	240	2880",
        "560	96	336	627	546	241	191	94	368	528	298	78	76	123	240	563",
        "818	973	1422	244	1263	200	1220	208	1143	627	609	274	130	961	685	1318",
        "1680	1174	1803	169	450	134	3799	161	2101	3675	133	4117	3574	4328	3630	4186",
        "1870	3494	837	115	1864	3626	24	116	2548	1225	3545	676	128	1869	3161	109",
        "890	53	778	68	65	784	261	682	563	781	360	382	790	313	785	71",
        "125	454	110	103	615	141	562	199	340	80	500	473	221	573	108	536",
        "1311	64	77	1328	1344	1248	1522	51	978	1535	1142	390	81	409	68	352"]

        result = 0

        spread.each do |row|
            arr_row = row.split("\t")
            
            arr_row.each_with_index do |element, index|
                arr_row.each_with_index do |aux_element, aux_index|
                    if index != aux_index
                        if (element.to_i % aux_element.to_i) == 0
                            result = result + (element.to_i/aux_element.to_i)
                        end
                    end
                end
            end
        end

        result
    end
end
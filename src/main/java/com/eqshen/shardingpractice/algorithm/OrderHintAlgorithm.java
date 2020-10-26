package com.eqshen.shardingpractice.algorithm;

import lombok.NoArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.shardingsphere.api.sharding.hint.HintShardingAlgorithm;
import org.apache.shardingsphere.api.sharding.hint.HintShardingValue;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/**
 * @author eqshen
 * @description
 * @date 2020/10/26
 */
@Slf4j
@NoArgsConstructor
public class OrderHintAlgorithm implements HintShardingAlgorithm {
    @Override
    public Collection<String> doSharding(Collection collection, HintShardingValue hintShardingValue) {
        log.info("强制路由开始，表总数：{}，路由字段：{}",collection,hintShardingValue.getColumnName());

        final Collection shardingValues = hintShardingValue.getValues();
        List<String> result = new ArrayList<>();
        for (Object o : collection) {
            String targetName = (String) o;
            String suffix = targetName.substring(targetName.length() - 1);
            for (Object value : shardingValues) {
                Integer v = new Integer(value+"");
                if(v %2 == Integer.parseInt(suffix)){
                    log.info("值：{} 被路由到表：{}",v,targetName);
                    result.add(targetName);
                }
            }
        }
        log.info("强制路由结束：{}",result);
        return result;
    }
}

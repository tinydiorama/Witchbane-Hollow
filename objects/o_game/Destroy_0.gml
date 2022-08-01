ds_list_destroy(items);
ds_list_destroy(item_number);
ds_list_destroy(friends);
ds_list_destroy(friends_discovered);
ds_map_destroy(friendship_scores);
ds_list_destroy(quests);
ds_list_destroy(quests_done);
ds_list_destroy(quest_states);
ds_list_destroy(quests_done_states);
ds_list_destroy(furniture_outdoor);
ds_map_destroy(picked_items);

ds_list_destroy(allumbrae);
ds_list_destroy(umbrae);
ds_list_destroy(allcurios);
ds_list_destroy(curios);
ds_list_destroy(allgenesia);
ds_list_destroy(genesia);
ds_list_destroy(allimpresiums);
ds_list_destroy(impresiums);
ds_list_destroy(allferrotypes);
ds_list_destroy(ferrotypes);
ds_list_destroy(allaconitums);
ds_list_destroy(aconitums);

ds_list_destroy(new_mail);
ds_list_destroy(all_mail);
ds_list_destroy(mail_queue);

quack_unload(global.dialogue);
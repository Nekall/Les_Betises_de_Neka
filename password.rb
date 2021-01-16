def signup
  puts "Login d'accès, Agent veuillez saisir votre code:"
  puts "Entrez un mot de passe"
  print ">"
  password = gets.chomp
  return password
end

def login(password)
      puts "Login d'accès, Agent confirmer votre code:"
      print ">"
      user_enter = gets.chomp

      if(user_enter != password)
        then loop do
              puts "Accès refusé !"
              puts "Veuillez resaisir votre mot de code:"
              print ">"
              user_enter = gets.chomp
              break if (user_enter == password)
        end
  end
end


def welcome_screen
   puts "      Accès autorisé"
   sleep(0.3)
puts " "
puts "struct group_info init_groups = { .usage = ATOMIC_INIT(2) };"
sleep(0.1)
puts "   struct group_info *groups_alloc(int gidsetsize){"
sleep(0.1)
puts "   	struct group_info *group_info;"
sleep(0.1)
puts "   	int nblocks;"
sleep(0.1)
puts "   	int i;"
sleep(0.1)
puts "   	nblocks = (gidsetsize + NGROUPS_PER_BLOCK - 1) / NGROUPS_PER_BLOCK;"
sleep(0.1)
puts "   	/* Make sure we always allocate at least one indirect block pointer */"
sleep(0.1)
puts "   	nblocks = nblocks ? : 1;"
sleep(0.1)
puts "   	group_info = kmalloc(sizeof(*group_info) + nblocks*sizeof(gid_t *), GFP_USER);"
sleep(0.1)
puts "   	if (!group_info)"
sleep(0.1)
puts "   		return NULL;"
sleep(0.1)
puts "   	group_info->ngroups = gidsetsize;"
sleep(0.1)
puts "   	group_info->nblocks = nblocks;"
sleep(0.1)
puts "   	atomic_set(&group_info->usage, 1);"
sleep(0.1)
puts "   	if (gidsetsize <= NGROUPS_SMALL)"
sleep(0.1)
puts "   		group_info->blocks[0] = group_info->small_block;"
sleep(0.1)
puts "   	else {"
sleep(0.1)
puts "   		for (i = 0; i < nblocks; i++) {"
sleep(0.1)
puts "   			gid_t *b;"
sleep(0.1)
puts "   			b = (void *)__get_free_page(GFP_USER);"
sleep(0.1)
puts "   			if (!b)"
sleep(0.1)
puts "   				goto out_undo_partial_alloc;"
sleep(0.1)
puts "   			group_info->blocks[i] = b;"
sleep(0.1)
puts "   		}"
sleep(0.1)
puts "   	}"
sleep(0.1)
puts "   	return group_info;"
sleep(0.1)
puts "   out_undo_partial_alloc:"
sleep(0.1)
puts "   	while (--i >= 0) {"
sleep(0.1)
puts "   		free_page((unsigned long)group_info->blocks[i]);"
sleep(0.1)
puts "   	}"
sleep(0.1)
puts "   	kfree(group_info);"
sleep(0.1)
puts "   	return NULL;"
sleep(0.1)
puts "   }"
sleep(0.1)
puts "   EXPORT_SYMBOL(groups_alloc);"
sleep(0.1)
puts "   void groups_free(struct group_info *group_info)"
sleep(0.1)
puts "   {"
sleep(0.1)
puts "   	if (group_info->blocks[0] != group_info->small_block) {"
sleep(0.1)
puts "   		int i;"
sleep(0.1)
puts "   		for (i = 0; i < group_info->nblocks; i++)"
sleep(0.1)
puts "   			free_page((unsigned long)group_info->blocks[i]);"
sleep(0.1)
puts "   	}"
sleep(0.1)
puts "   	kfree(group_info);"
sleep(0.1)
puts "   }"
sleep(0.1)
puts "   EXPORT_SYMBOL(groups_free);"
sleep(0.1)
puts "   /* export the group_info to a user-space array */"
sleep(0.1)
puts "   static int groups_to_user(gid_t __user *grouplist,"
sleep(0.1)
puts "   			  const struct group_info *group_info)"
sleep(0.1)
puts "   {"
sleep(0.1)
puts "   	int i;"
sleep(0.1)
puts "   	unsigned int count = group_info->ngroups;"
sleep(0.1)
puts "   	for (i = 0; i < group_info->nblocks; i++) {"
sleep(0.1)
puts "   		unsigned int cp_count = min(NGROUPS_PER_BLOCK, count);"
sleep(0.1)
puts "   		unsigned int len = cp_count * sizeof(*grouplist);"

   system('clear')
   sleep(1)
    puts "   ______ ____   _   __ ______ ____ ____   ______ _   __ ______ ____ ______ __ "
    puts "  / ____// __ \\ / | / // ____//  _// __ \\ / ____// | / //_  __//  _// ____// / "
    puts " / /    / / / //  |/ // /_    / / / / / // __/  /  |/ /  / /   / / / __/  / / "
    puts "/ /___ / /_/ // /|  // __/  _/ / / /_/ // /___ / /|  /  / /  _/ / / /___ / /___"
    puts "\\____/ \\____//_/ |_//_/    /___//_____//_____//_/ |_/  /_/  /___//_____//_____/"
    puts "=================================================================================="
    puts " "
    puts "Veuillez patienter pendant le chargement des dossiers confidentiels"
    puts " "
    puts " "

    2.times do
      print "                    ooooooooooooooo\r"
      sleep(0.2)
      print "                    Ooooooooooooooo\r"
      sleep(0.2)
      print "                    0Oooooooooooooo\r"
      sleep(0.2)
      print "                    O0Ooooooooooooo\r"
      sleep(0.2)
      print "                    oO0Oooooooooooo\r"
      sleep(0.2)
      print "                    ooO0Ooooooooooo\r"
      sleep(0.2)
      print "                    oooO0Oooooooooo\r"
      sleep(0.2)
      print "                    ooooO0Ooooooooo\r"
      sleep(0.2)
      print "                    oooooO0Oooooooo\r"
      sleep(0.2)
      print "                    ooooooO0Ooooooo\r"
      sleep(0.2)
      print "                    oooooooO0Oooooo\r"
      sleep(0.2)
      print "                    ooooooooO0Ooooo\r"
      sleep(0.2)
      print "                    oooooooooO0Oooo\r"
      sleep(0.2)
      print "                    ooooooooooO0Ooo\r"
      sleep(0.2)
      print "                    oooooooooooO0Oo\r"
      sleep(0.2)
      print "                    ooooooooooooO0O\r"
      sleep(0.2)
      print "                    oooooooooooooO0\r"
      sleep(0.2)
      print "                    ooooooooooooooO\r"
      sleep(0.2)
      print "                    oooooooooooooO0\r"
      sleep(0.2)
      print "                    ooooooooooooO0O\r"
      sleep(0.2)
      print "                    oooooooooooO0Oo\r"
      sleep(0.2)
      print "                    ooooooooooO0Ooo\r"
      sleep(0.2)
      print "                    oooooooooO0Oooo\r"
      sleep(0.2)
      print "                    ooooooooO0Ooooo\r"
      sleep(0.2)
      print "                    oooooooO0Oooooo\r"
      sleep(0.2)
      print "                    ooooooO0Ooooooo\r"
      sleep(0.2)
      print "                    oooooO0Oooooooo\r"
      sleep(0.2)
      print "                    ooooO0Ooooooooo\r"
      sleep(0.2)
      print "                    oooO0Oooooooooo\r"
      sleep(0.2)
      print "                    ooO0Ooooooooooo\r"
      sleep(0.2)
      print "                    oO0Oooooooooooo\r"
      sleep(0.2)
      print "                    O0Ooooooooooooo\r"
      sleep(0.2)
      print "                    0Oooooooooooooo\r"
      sleep(0.2)
      print "                    Ooooooooooooooo\r"
      sleep(0.2)
    end

    print "                    Chargement terminé !\r"
    sleep(0.5)
    print "_____________________________________________"
    puts " "
    puts " "
    print ">_                        \r"
    sleep(0.3)
    print ">_|                       \r"
    sleep(0.5)
    print ">_                        \r"
    sleep(0.5)
    print ">_|                       \r"
    sleep(0.3)
    print ">_B|                      \r"
    sleep(0.5)
    print ">_Bi|                     \r"
    sleep(0.2)
    print ">_Bie|                    \r"
    sleep(0.5)
    print ">_Bien|                   \r"
    sleep(0.3)
    print ">_Bienv|                  \r"
    sleep(0.5)
    print ">_Bienve|                 \r"
    sleep(0.1)
    print ">_Bienven|                \r"
    sleep(0.5)
    print ">_Bienvenu|               \r"
    sleep(0.3)
    print ">_Bienvenue|              \r"
    sleep(0.5)
    print ">_Bienvenue |             \r"
    sleep(0.3)
    print ">_Bienvenue A|            \r"
    sleep(0.5)
    print ">_Bienvenue Ag|           \r"
    sleep(0.5)
    print ">_Bienvenue Age|          \r"
    sleep(0.1)
    print ">_Bienvenue Agen|         \r"
    sleep(0.2)
    print ">_Bienvenue Agent|        \r"
    sleep(0.2)
    print ">_Bienvenue Agent.|       \r"
    sleep(0.1)
    print ">_Bienvenue Agent.T|      \r"
    sleep(0.3)
    print ">_Bienvenue Agent.TH|     \r"
    sleep(0.5)
    print ">_Bienvenue Agent.THP|    \r"
    sleep(0.3)
    print ">_Bienvenue Agent.THP6|   \r"
    sleep(0.1)
    print ">_Bienvenue Agent.THP69|  \r"
    sleep(0.1)
    print ">_Bienvenue Agent.THP693| \r"
    sleep(0.1)
    print ">_Bienvenue Agent.THP6931|\r"
    sleep(0.5)
    print ">_Bienvenue Agent.THP6931 \r"
    sleep(0.5)
    print ">_Bienvenue Agent.THP6931|\r"
    sleep(0.5)
    print ">_Bienvenue Agent.THP6931 \r"
    sleep(0.5)
    print ">_Bienvenue Agent.THP6931|\r"
    sleep(0.5)
    print ">_Bienvenue Agent.THP6931 \r"
    sleep(0.5)

    puts " "
    puts " "
    print " ●  | ✉ 8:Messages en attentes. | 54 • Agents Online | VPN: Activation en cours... ◴ \r"
    sleep(0.1)
    print " ●  | ✉ 8:Messages en attentes. | 54 • Agents Online | VPN: Activation en cours... ◷ \r"
    sleep(0.1)
    print " ●  | ✉ 8:Messages en attentes. | 54 • Agents Online | VPN: Activation en cours... ◶ \r"
    sleep(0.1)
    print " ●  | ✉ 8:Messages en attentes. | 54 • Agents Online | VPN: Activation en cours... ◵ \r"
    sleep(0.1)
    print " ●  | ✉ 8:Messages en attentes. | 54 • Agents Online | VPN: Activation en cours... ◴ \r"
    sleep(0.1)
    print " ●  | ✉ 8:Messages en attentes. | 54 • Agents Online | VPN: Activation en cours... ◷ \r"
    sleep(0.1)
    print " ●  | ✉ 8:Messages en attentes. | 54 • Agents Online | VPN: Activation en cours... ◶ \r"
    sleep(0.1)
    print " ●  | ✉ 8:Messages en attentes. | 54 • Agents Online | VPN: Activation en cours... ◵ \r"
    sleep(0.1)
    print " ●  | ✉ 8:Messages en attentes. | 54 • Agents Online | VPN: Activation en cours... ◴ \r"
    sleep(0.1)
    print " ●  | ✉ 8:Messages en attentes. | 54 • Agents Online | VPN: Activation en cours... ◷ \r"
    sleep(0.1)
    print " ●  | ✉ 8:Messages en attentes. | 54 • Agents Online | VPN: Activation en cours... ◶ \r"
    sleep(0.1)
    print " ●  | ✉ 8:Messages en attentes. | 54 • Agents Online | VPN: Activation en cours... ◵ \r"
    sleep(0.1)
    print " ●  | ✉ 8:Messages en attentes. | 54 • Agents Online | VPN: Activation en cours... ◴ \r"
    sleep(0.1)
    print " ●  | ✉ 8:Messages en attentes. | 54 • Agents Online | VPN: Activation en cours... ◷ \r"
    sleep(0.1)
    print " ●  | ✉ 8:Messages en attentes. | 54 • Agents Online | VPN: Activation en cours... ◶ \r"
    sleep(0.1)
    print " ●  | ✉ 8:Messages en attentes. | 54 • Agents Online | VPN: Activation en cours... ◵ \r"
    sleep(0.1)
    print " ●  | ✉ 8:Messages en attentes. | 54 • Agents Online | VPN: Activation en cours... ◴ \r"
    sleep(0.1)
    print " ●  | ✉ 8:Messages en attentes. | 54 • Agents Online | VPN: Activation en cours... ◷ \r"
    sleep(0.1)
    print " ●  | ✉ 8:Messages en attentes. | 54 • Agents Online | VPN: Activation en cours... ◶ \r"
    sleep(0.1)
    print " ●  | ✉ 8:Messages en attentes. | 54 • Agents Online | VPN: Activation en cours... ◵ \r"
    sleep(0.1)
    print " ●  | ✉ 8:Messages en attentes. | 54 • Agents Online | VPN: Activation en cours... ◴ \r"
    sleep(0.1)
    print " ●  | ✉ 8:Messages en attentes. | 54 • Agents Online | VPN: Activation en cours... ◷ \r"
    sleep(0.1)
    print " ●  | ✉ 8:Messages en attentes. | 54 • Agents Online | VPN: Activation en cours... ◶ \r"
    sleep(0.1)
    print " ●  | ✉ 8:Messages en attentes. | 54 • Agents Online | VPN: Activation en cours... ◵ \r"
    sleep(0.1)
    print " ●  | ✉ 8:Messages en attentes. | 54 • Agents Online | VPN: Activation en cours... ◴ \r"
    sleep(0.1)
    print " ●  | ✉ 8:Messages en attentes. | 54 • Agents Online | VPN: Activation en cours... ◷ \r"
    sleep(0.1)
    print " ●  | ✉ 8:Messages en attentes. | 54 • Agents Online | VPN: Activation en cours... ◶ \r"
    sleep(0.1)
    print " ●  | ✉ 8:Messages en attentes. | 54 • Agents Online | VPN: Activation en cours... ◵ \r"
    sleep(0.1)
    print " ●  | ✉ 8:Messages en attentes. | 54 • Agents Online | VPN: Activation en cours... ◴ \r"
    sleep(0.1)
    print " ●  | ✉ 8:Messages en attentes. | 54 • Agents Online | VPN: Activation en cours... ◷ \r"
    sleep(0.1)
    print " ●  | ✉ 8:Messages en attentes. | 54 • Agents Online | VPN: Activation en cours... ◶ \r"
    sleep(0.1)
    print " ●  | ✉ 8:Messages en attentes. | 54 • Agents Online | VPN: Activation en cours... ◵ \r"
    sleep(1)


    print " ●  | ✉ 8:Messages en attentes. | 54 • Agents Online | VPN: Activé                    \r"
    sleep(1)
    print " ◌  | ✉ 8:Messages en attentes. | 54 • Agents Online | VPN: Activé                    \r"
    sleep(0.2)
    print " ○  | ✉ 8:Messages en attentes. | 54 • Agents Online | VPN: Activé                    \r"
    sleep(0.2)
    print " ◌  | ✉ 8:Messages en attentes. | 54 • Agents Online | VPN: Activé                    \r"
    sleep(0.2)
    print " ●  | ✉ 8:Messages en attentes. | 54 • Agents Online | VPN: Activé                    \r"
    puts " "
    puts " |"
    puts " |____________________________"
    puts " |___Ouverture des messages___|"
    sleep(0.3)
    puts " |___Missions en cours________|"
    sleep(0.3)
    puts " |___Parametres_______________|"
    sleep(0.3)
    puts " |___Deconnexion______________|"
    sleep(0.3)
    print " |_____________▽______________|\r"
    sleep(0.8)
    print" |_____________▼______________|\r"
    sleep(0.8)
    print" |_____________▽______________|\r"
    sleep(0.8)
    print" |_____________▼______________|\r"
    sleep(0.8)
    print" |_____________▽______________|\r"
    sleep(0.8)
    print" |_____________▼______________|\r"
    sleep(0.8)
    print" |_____________▽______________|\r"
    sleep (6)
    system('clear')


#vote couverture est compromise

puts " "
puts " "
puts " "
puts " "
puts " "
puts " "
puts " "
puts "                     ____________________________________________________"
puts "                    |                   A L E R T E                    ☒ |"
puts "                    |____________________________________________________|"
puts "                    |                                                    |"
puts "                    |                       /!\\                          |"
puts "                    |                 VOTRE COUVERTURE                   |"
puts "                    |                  EST COMPROMISE                    |"
puts "                    |                       /!\\                          |"
puts "                    |                                                    |"
puts "                    |                                                    |"
puts "                    |____________________________________________________|"
puts " "
puts " "
puts " "
puts " "
puts " "
puts " "
puts " "
puts "                                        Logout, run for your life !"
puts " "
puts " "
puts " "
puts " "
puts " "
puts " "
puts " "
puts " "
puts " "
puts " "
puts " "
puts " "
puts " "
puts " "
puts " "
puts " "
puts " "
puts " "
puts " "
puts " "
puts " "
puts " "
puts " "
puts " "
puts " "
puts " "

end

def perform
  password = signup
  login(password)
  welcome_screen
end

perform

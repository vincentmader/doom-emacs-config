; ╔═══════════════════════════════════════════════════════════════════════════╗
; ║                              ORG-MODE - AGENDA                            ║
; ╚═══════════════════════════════════════════════════════════════════════════╝

; Specify appearance of agenda.                                             {{{
; ─────────────────────────────────────────────────────────────────────────────

; Specify how many Days should be included in the Agenda.
   (setq org-agenda-span 14)

; Start the agenda today. (default: last Monday)
   (setq org-agenda-start-day "+0d")
 ; (setq org-agenda-start-on-weekday nil)
 ; (setq org-agenda-inhibit-startup nil)
 ; (setq org-agenda-dim-blocked-tasks nil)

; }}}
; Specify what files should be loaded into agenda.                          {{{
; ─────────────────────────────────────────────────────────────────────────────

; Define list of agenda-files.
  (after! org (setq org-agenda-files '(
    "~/org/Index.org"
    "~/org/inbox/Inbox.org"
    "~/org/chore/write_journal/Journal by Year/2023.org"
; NOTE: Do NOT delete the "MARKER..." lines.
; They are used in my "make-org-agenda" repo to auto-generate the list below.
; MARKER_START_ORG_AGENDA_FILE_LIST
    "/Users/vinc/org/inbox/adventures/Adventures.org"
    "/Users/vinc/org/inbox/observations/observations.org"
    "/Users/vinc/org/inbox/sort/Leiter-Abschied.org"
    "/Users/vinc/org/projects/active-main/develop_website_mader.xyz/Develop website mader.xyz.org"
    "/Users/vinc/org/projects/active-main/develop_website_chronos/chronos.org"
    "/Users/vinc/org/projects/active-main/develop_website_chronos/._chronos.org"
    "/Users/vinc/org/projects/active-main/develop_website_chronos/Develop website chronos.org"
    "/Users/vinc/org/projects/active-main/develop_app_sono/._Develop app Sono.org"
    "/Users/vinc/org/projects/active-main/develop_app_sono/Develop app Sono.org"
    "/Users/vinc/org/projects/active-main/template_web_server_with_rocket_and_wasm_client/Template web server with rocket.rs and WASM client.org"
    "/Users/vinc/org/projects/active-main/organize_the_pfadi-aktion_2023-10_herbst-huette/Organize the Pfadi-Aktion 2023-10 Herbst-Huette.org"
    "/Users/vinc/org/projects/active-main/write_list_of_things_to_achieve_during_my_time_as_stavo/Write list of things to achieve during my time as StaVo.org"
    "/Users/vinc/org/projects/active-main/work_as_leiter_at_dpsg/Work as Leiter at DPSG.org"
    "/Users/vinc/org/projects/active-main/work_as_leiter_at_dpsg/._Work as Leiter at DPSG.org"
    "/Users/vinc/org/projects/active-main/write_master_thesis/Write Master Thesis.org"
    "/Users/vinc/org/projects/active-main/develop_auto-rice_script_for_automated_computer_setup/DevEnv.org"
    "/Users/vinc/org/projects/active-main/develop_auto-rice_script_for_automated_computer_setup/Develop auto-rice script for automated computer setup.org"
    "/Users/vinc/org/projects/active-side/configure_tmux/Configure tmux.org"
    "/Users/vinc/org/projects/active-side/complete_exercises_on_coding_with_leetcode/Complete exercises on coding with Leetcode.org"
    "/Users/vinc/org/projects/active-side/learn_about_docker/Learn about Docker.org"
    "/Users/vinc/org/projects/active-side/configure_emacs_org-mode/Configure emacs org-mode.org"
    "/Users/vinc/org/projects/active-side/learn_about_blender/Learn about Blender.org"
    "/Users/vinc/org/projects/active-side/learn_about_emacs/Learn about Emacs.org"
    "/Users/vinc/org/projects/active-side/learn_how_to_play_chess/Learn how to play chess.org"
    "/Users/vinc/org/projects/active-side/visualize_outcomes_of_competitive_games/Visualize outcomes of competitive games.org"
    "/Users/vinc/org/projects/active-side/develop_cli_utility_dpsg-stats/Develop CLI utility dpsg-stats.org"
    "/Users/vinc/org/projects/active-side/learn_about_xcode/Learn about XCode.org"
    "/Users/vinc/org/projects/active-side/develop_game_lager-simulator_2023/Develop game Lager-Simulator 2023.org"
    "/Users/vinc/org/projects/active-side/develop_cli_utility_chatgpt.py/Develop CLI utility ChatGPT.py.org"
    "/Users/vinc/org/projects/active-side/configure_emacs/Configure Emacs.org"
    "/Users/vinc/org/projects/active-side/learn_how_to_play_the_piano/Learn how to play the piano.org"
    "/Users/vinc/org/projects/active-side/configure_shell/Configure shell.org"
    "/Users/vinc/org/projects/active-side/develop_cli_utility_make-org-journal/Develop CLI utility make-org-journal.org"
    "/Users/vinc/org/projects/active-side/learn_how_to_play_the_guitar/Learn how to play the guitar.org"
    "/Users/vinc/org/projects/active-side/develop_website_georgs-punkte.de/Develop website georgs-punkte.de.org"
    "/Users/vinc/org/projects/active-side/configure_hetzner_server/Configure Hetzner server.org"
    "/Users/vinc/org/projects/active-side/work_as_aushilfe_at_gastroevents/Work as tutor at Nachhilfe.org"
    "/Users/vinc/org/projects/active-side/work_as_aushilfe_at_gastroevents/GastroEvents.org"
    "/Users/vinc/org/projects/active-side/work_as_aushilfe_at_gastroevents/Work as Aushilfe at GastroEvents.org"
    "/Users/vinc/org/projects/active-side/configure_zoxide/Configure zoxide.org"
    "/Users/vinc/org/projects/active-side/configure_m1_macbook_pro/Configure M1 MacBook Pro.org"
    "/Users/vinc/org/projects/active-side/learn_how_to_setup_ssh_authentification_for_github/Learn how to setup SSH authentification for GitHub.org"
    "/Users/vinc/org/projects/active-side/configure_yabai/Configure yabai.org"
    "/Users/vinc/org/projects/active-side/configure_zsh/Configure zsh.org"
    "/Users/vinc/org/projects/active-side/read_books/Read books.org"
    "/Users/vinc/org/projects/active-side/configure_nvim/Configure nvim.org"
    "/Users/vinc/org/projects/active-side/develop_simulations_from_computational_physics/Develop simulations from computational physics.org"
    "/Users/vinc/org/projects/active-side/develop_app_barWürfeln/Develop app barWürfeln.org"
    "/Users/vinc/org/projects/active-side/learn_how_to_solve_a_rubiks_cube/Solving Times.org"
    "/Users/vinc/org/projects/active-side/learn_how_to_solve_a_rubiks_cube/Learn how to solve a Rubik's cube.org"
    "/Users/vinc/org/projects/chores/keep_order_at_home/Keep order at Home.org"
    "/Users/vinc/org/projects/chores/write_journal/Highlights.org"
    "/Users/vinc/org/projects/chores/write_journal/._Highlights.org"
    "/Users/vinc/org/projects/chores/write_journal/Write Journal.org"
    "/Users/vinc/org/projects/chores/write_journal/Bucket List.org"
    "/Users/vinc/org/projects/chores/write_journal/._Bucket List.org"
    "/Users/vinc/org/projects/chores/keep_track_of_bureaucracy/Keep track of Bureaucracy.org"
    "/Users/vinc/org/projects/chores/keep_track_of_health/Keep track of Health.org"
    "/Users/vinc/org/projects/chores/keep_track_of_finances/Keep track of Finances.org"
    "/Users/vinc/org/projects/chores/keep_track_of_chores/Keep track of Chores.org"
    "/Users/vinc/org/projects/chores/exercise_mentally_by_solving_problems_from_various_fields/Exercise mentally by solving problems from various fields.org"
    "/Users/vinc/org/projects/chores/implement_gtd_system/Implement GTD system.org"
    "/Users/vinc/org/projects/chores/implement_gtd_system/GTD.org"
    "/Users/vinc/org/projects/chores/implement_gtd_system/._GTD.org"
    "/Users/vinc/org/projects/chores/write_a_plan_for_workouts/Write a plan for workouts.org"
; MARKER_END_ORG_AGENDA_FILE_LIST
  )))

; }}}

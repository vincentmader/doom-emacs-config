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
    "~/org/0_inbox/Inbox.org"
; NOTE: Do NOT delete the "MARKER..." lines.
; They are used in my "make-org-agenda" repo to auto-generate the list below.
; MARKER_START_ORG_AGENDA_FILE_LIST
    "/Users/vinc/org/1_active-main-projects/configure_unix_system/Configure UNIX system.org"
    "/Users/vinc/org/1_active-main-projects/plan_festival_visit_to_southside_2023/Plan festival visit to SouthSide 2023.org"
    "/Users/vinc/org/1_active-main-projects/plan_vacation_to_france_2023/Plan vacation to France 2023.org"
    "/Users/vinc/org/1_active-main-projects/implement_gtd_system/Implement GTD system.org"
    "/Users/vinc/org/1_active-main-projects/configure_hetzner_server/Configure Hetzner server.org"
    "/Users/vinc/org/1_active-main-projects/template_web_server_with_rocket_and_wasm_client/Template web server with rocket.rs and WASM client.org"
    "/Users/vinc/org/1_active-main-projects/write_journal/Write Journal.org"
    "/Users/vinc/org/1_active-main-projects/write_journal/Highlights.org"
    "/Users/vinc/org/1_active-main-projects/write_journal/Bucket List.org"
    "/Users/vinc/org/1_active-main-projects/develop_the_website_mader.xyz/Versions.org"
    "/Users/vinc/org/1_active-main-projects/develop_the_website_mader.xyz/Develop the website mader.xyz.org"
    "/Users/vinc/org/1_active-main-projects/develop_the_app_sono/Develop the app Sono.org"
    "/Users/vinc/org/1_active-main-projects/exercise_mentally_by_solving_problems_from_various_fields/Exercise mentally by solving problems from various fields.org"
    "/Users/vinc/org/1_active-main-projects/develop_the_game_lager-simulator_2023/Develop the game Lager-Simulator 2023.org"
    "/Users/vinc/org/1_active-main-projects/write_list_of_things_to_achieve_during_my_time_as_stavo/Write list of things to achieve during my time as StaVo.org"
    "/Users/vinc/org/1_active-main-projects/work_as_leiter_at_dpsg/Work as Leiter at DPSG.org"
    "/Users/vinc/org/1_active-main-projects/learn_how_to_code_in_python/Learn how to code in Python.org"
    "/Users/vinc/org/1_active-main-projects/write_a_plan_for_workouts/Write a plan for workouts.org"
    "/Users/vinc/org/1_active-main-projects/learn_how_to_code_in_rust/Learn how to code in Rust.org"
    "/Users/vinc/org/1_active-main-projects/write_master_thesis/Write Master Thesis.org"
    "/Users/vinc/org/1_active-main-projects/develop_the_website_chronos/chronos.org"
    "/Users/vinc/org/1_active-main-projects/develop_the_website_chronos/Develop the website chronos.org"
    "/Users/vinc/org/1_active-main-projects/learn_how_to_solve_a_rubiks_cube/Learn how to solve a Rubik's cube.org"
    "/Users/vinc/org/1_active-main-projects/learn_how_to_solve_a_rubiks_cube/Solving Times.org"
    "/Users/vinc/org/1_active-main-projects/develop_auto-rice_script_for_automated_computer_setup/Develop auto-rice script for automated computer setup.org"
    "/Users/vinc/org/1_active-main-projects/develop_auto-rice_script_for_automated_computer_setup/DevEnv.org"
    "/Users/vinc/org/2_active-side-projects/configure_tmux/Configure tmux.org"
    "/Users/vinc/org/2_active-side-projects/complete_exercises_on_coding_with_leetcode/Complete exercises on coding with Leetcode.org"
    "/Users/vinc/org/2_active-side-projects/learn_about_docker/Learn about Docker.org"
    "/Users/vinc/org/2_active-side-projects/configure_emacs_org-mode/Configure emacs org-mode.org"
    "/Users/vinc/org/2_active-side-projects/learn_about_blender/Learn about Blender.org"
    "/Users/vinc/org/2_active-side-projects/learn_how_to_code_in_css/Learn how to code in CSS.org"
    "/Users/vinc/org/2_active-side-projects/read_rust_by_example/Read Rust by Example.org"
    "/Users/vinc/org/2_active-side-projects/keep_order_at_home/Keep order at Home.org"
    "/Users/vinc/org/2_active-side-projects/learn_how_to_play_chess/Learn how to play chess.org"
    "/Users/vinc/org/2_active-side-projects/visualize_outcomes_of_competitive_games/Visualize outcomes of competitive games.org"
    "/Users/vinc/org/2_active-side-projects/develop_cli_utility_dpsg-stats/Develop CLI utility dpsg-stats.org"
    "/Users/vinc/org/2_active-side-projects/learn_about_xcode/Learn about XCode.org"
    "/Users/vinc/org/2_active-side-projects/automate_the_image_upload_to_tierarztpraxis-schäuffelen.de/tierarzt.org"
    "/Users/vinc/org/2_active-side-projects/develop_cli_utility_chatgpt.py/Develop CLI utility ChatGPT.py.org"
    "/Users/vinc/org/2_active-side-projects/configure_emacs/Configure Emacs.org"
    "/Users/vinc/org/2_active-side-projects/learn_how_to_play_the_piano/Learn how to play the piano.org"
    "/Users/vinc/org/2_active-side-projects/develop_the_website_georgs-punkte.de/Develop the website georgs-punkte.de.org"
    "/Users/vinc/org/2_active-side-projects/configure_shell/Configure shell.org"
    "/Users/vinc/org/2_active-side-projects/learn_how_to_play_the_guitar/Learn how to play the guitar.org"
    "/Users/vinc/org/2_active-side-projects/read_the_rust_programming_language/Read The Rust Programming Language.org"
    "/Users/vinc/org/2_active-side-projects/write_a_summary_of_software_error_messages_and_how_to_fix_them/Write a summary of software error messages and how to fix them.org"
    "/Users/vinc/org/2_active-side-projects/learn_how_to_code_in_ipython/Learn how to code in iPython.org"
    "/Users/vinc/org/2_active-side-projects/learn_how_to_code_in_ipython/README.org"
    "/Users/vinc/org/2_active-side-projects/read_exercises_for_the_feynman_lectures_on_physics/Read Exercises for the Feynman Lectures on Physics.org"
    "/Users/vinc/org/2_active-side-projects/learn_how_to_setup_ssh_authentification_for_github/Learn how to setup SSH authentification for GitHub.org"
    "/Users/vinc/org/2_active-side-projects/configure_yabai/Configure yabai.org"
    "/Users/vinc/org/2_active-side-projects/learn_how_to_code_in_javascript/Learn how to code in JavaScript.org"
    "/Users/vinc/org/2_active-side-projects/keep_track_of_health/Keep track of Health.org"
    "/Users/vinc/org/2_active-side-projects/read_rust_for_rustaceans/Read Rust for Rustaceans.org"
    "/Users/vinc/org/2_active-side-projects/learn_how_to_code_in_dart/Learn how to code in Dart.org"
    "/Users/vinc/org/2_active-side-projects/configure_zsh/README_old.org"
    "/Users/vinc/org/2_active-side-projects/configure_zsh/Configure zsh.org"
    "/Users/vinc/org/2_active-side-projects/read_books/Read books.org"
    "/Users/vinc/org/2_active-side-projects/learn_how_to_code_in_html/Learn how to code in HTML.org"
    "/Users/vinc/org/2_active-side-projects/configure_nvim/Configure nvim.org"
    "/Users/vinc/org/2_active-side-projects/develop_simulations_from_computational_physics/Develop simulations from computational physics.org"
    "/Users/vinc/org/2_active-side-projects/keep_track_of_finances/Keep track of Finances.org"
    "/Users/vinc/org/2_active-side-projects/keep_track_of_chores/Keep track of Chores.org"
; MARKER_END_ORG_AGENDA_FILE_LIST
  )))

; }}}

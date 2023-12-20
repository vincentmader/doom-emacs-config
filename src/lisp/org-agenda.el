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
    "/Users/vinc/org/project/active/setup_shared_data_partition_for_macos_and_asahi/Setup shared data partition for macOS and Asahi.org"
    "/Users/vinc/org/project/active/develop_app_barWürfeln/Develop app barWürfeln.org"
    "/Users/vinc/org/project/active/configure_hetzner_server/Configure Hetzner server.org"
    "/Users/vinc/org/project/active/work_as_stavo_at_dpsg/Work as StaVo at DPSG.org"
    "/Users/vinc/org/project/active/develop_website_chronos/chronos.org"
    "/Users/vinc/org/project/active/develop_website_chronos/Develop website chronos.org"
    "/Users/vinc/org/project/active/develop_website_mader.xyz/Develop website mader.xyz.org"
    "/Users/vinc/org/project/active/develop_tui-app_waslosamhaus/Configure WIFI at Harthauser Str. 119.org"
    "/Users/vinc/org/project/active/write_list_of_things_to_achieve_during_my_time_as_stavo/Write list of things to achieve during my time as StaVo.org"
    "/Users/vinc/org/project/active/work_as_aushilfe_at_gastroevents/GastroEvents.org"
    "/Users/vinc/org/project/active/work_as_aushilfe_at_gastroevents/Work as Aushilfe at GastroEvents.org"
    "/Users/vinc/org/project/active/work_as_leiter_at_dpsg/Work as Leiter at DPSG.org"
    "/Users/vinc/org/project/active/complete_tutorial_on_swiftui_by_apple/Complete tutorial on SwiftUI by Apple.org"
    "/Users/vinc/org/project/active/configure_m1_macbook_pro/Configure M1 MacBook Pro.org"
    "/Users/vinc/org/project/active/write_master_thesis/Write Master Thesis.org"
    "/Users/vinc/org/project/active/write_rede_zur_lage_der_nation_2023_for_dpsg_ul_soe/Write \"Rede zur Lage der Nation 2023\" for DPSG Ul-Soe.org"
    "/Users/vinc/org/project/active/write_rede_zur_lage_der_nation_2023_for_dpsg_ul_soe/Jahresplanung.org"
    "/Users/vinc/org/project/active/develop_simulations_from_computational_physics/Develop simulations from computational physics.org"
    "/Users/vinc/org/chore/keep_order_at_home/Keep order at Home.org"
    "/Users/vinc/org/chore/implement_gtd_system/Implement GTD system.org"
    "/Users/vinc/org/chore/implement_gtd_system/GTD.org"
    "/Users/vinc/org/chore/write_journal/Write Journal.org"
    "/Users/vinc/org/chore/exercise_mentally_by_solving_problems_from_various_fields/Exercise mentally by solving problems from various fields.org"
    "/Users/vinc/org/chore/keep_track_of_bureaucracy/Keep track of Bureaucracy.org"
    "/Users/vinc/org/chore/keep_track_of_health/Keep track of Health.org"
    "/Users/vinc/org/chore/keep_track_of_finances/Keep track of Finances.org"
; MARKER_END_ORG_AGENDA_FILE_LIST
  )))


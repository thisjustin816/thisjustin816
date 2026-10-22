# Justin Beeson

Platform engineer in San Diego. I build PowerShell modules, cloud infrastructure tooling, and software for the Game Boy and Game Boy Color.

My day job centers on internal developer platforms, CI/CD, and data infrastructure across AWS and Azure, mostly in healthcare and medical device software. My personal projects range from automating module releases to adding save systems to cartridge games.

[Resume](RESUME.md) · [One-page resume](SINGLEPAGE.md) · [LinkedIn](https://www.linkedin.com/in/justinbeeson) · [Email](mailto:justinbeeson@gmail.com)

## PowerShell modules

Published on the [PowerShell Gallery](https://www.powershellgallery.com/profiles/thisJUSTin816).

| Module | What it does |
| --- | --- |
| [**AzDOCmd**](https://github.com/thisjustin816/AzDO) | Wraps the Azure DevOps REST API for automation, reporting, and working with projects and build metadata. |
| [**JBUtils**](https://github.com/thisjustin816/JBUtils) | Utilities for common, low-level tasks, including process management and data handling. Supports Windows PowerShell 5.1 and PowerShell Core. |
| [**PSModuleUtils**](https://github.com/thisjustin816/PSModuleUtils) | Builds, tests, and publishes PowerShell modules with ModuleBuilder, Pester, and CI/CD workflows. |

```powershell
Install-Module AzDOCmd
Install-Module JBUtils
Install-Module PSModuleUtils
```

## Terraform

### [terraform-null-label](https://github.com/thisjustin816/terraform-null-label)

My fork of Cloud Posse's `terraform-null-label`, extended with provider-aware naming for AWS and Azure. It generates consistent labels and tags, resource-code labels, and validated physical resource names using per-service rules and deterministic hashes.

Version 2 separates logical labels from provider-valid names, with configurable naming rules and context chaining.

[Source and usage](https://github.com/thisjustin816/terraform-null-label) · [v2 migration guide](https://github.com/thisjustin816/terraform-null-label/blob/main/docs/migration-v2.md)

## Game Boy development

A Game Boy Color demake, original diagnostic ROMs, patches, and continued development on games I enjoy playing on real hardware.

| Project | What I've built |
| --- | --- |
| [**Match Land Demake**](https://cptbacon.itch.io/match-land-demake) | A fan-made Game Boy Color demake of Match Land with timed tile-matching combos, hero progression, and boss battles. Play the demo in your browser or download the ROM on itch.io; the full game is still in development. |
| [**Bacon Bits Test Cartridge**](https://github.com/thisjustin816/bacon-bits) | A Game Boy / Game Boy Color diagnostic cartridge with original artwork and animated instruments. Tests include buttons, display, audio, SRAM, link cable, infrared, burn-in, and flicker, with separate rumble and RTC builds. |
| [**Game Boy homebrew patches**](https://github.com/thisjustin816/gameboy-homebrew-patches) | Battery saves and bug fixes for games including Hermano, Roguecraft GB, Bubble Bobble, and Legion of Evil, plus standalone hardware diagnostics. Patches include source and verification tools. |
| [**Pokémon Pinball rumble patch**](https://github.com/thisjustin816/pokepinball-rumble-patch) | A PowerShell patcher that adjusts rumble timing for flashcart motors, paired with a diagnostic ROM for measuring motor response. |
| [**Labyrinth of the Dragon**](https://github.com/thisjustin816/LabyrinthOfTheDragon) | Continued development of NesHacker's Game Boy Color RPG. Started by finishing the save system, then expanded into gameplay fixes and work toward completing the game while preserving its original intent. |

The Game Boy repositories document AI assistance, upstream credits, and how each project was tested.

### QA and playtesting

I've also done functional and regression testing for retro releases with [ModRetro](https://modretro.com), [Incube8 Games](https://incube8games.com), and [Playtiles](https://playtil.es), plus playtesting for independent developers.

## Background and contact

My work spans platform engineering, DevOps, data infrastructure, and embedded software testing. The [full resume](RESUME.md) covers my professional experience; the [one-page version](SINGLEPAGE.md) provides a shorter overview.

Reach me at [justinbeeson@gmail.com](mailto:justinbeeson@gmail.com) or on [LinkedIn](https://www.linkedin.com/in/justinbeeson).

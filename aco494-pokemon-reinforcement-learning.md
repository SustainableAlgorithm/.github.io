# Pokémon Battles in Reinforcement Learning

**Course:** ACO 494, Arizona State University  
**Project format:** Collaborative research paper and presentation  
**Contributors:** Eris Bliss, Corey Gregory, and Kathleen Kagan

## Project overview

This collaborative ACO 494 project compared research on reinforcement learning (RL) in Pokémon and other turn-based game environments. The paper and presentation examined how different RL approaches learn competitive behavior, adapt to opponents, generate game content, and influence player engagement.

The work is a **literature review and comparative analysis**, not a claim that our group implemented or trained the algorithms discussed in the papers.

## Research questions

- How can reinforcement learning agents learn effective behavior in turn-based games?
- How do different reward structures and training approaches affect learning and adaptation?
- Can agents adapt to different opponents, including human players?
- How might these techniques support dynamic difficulty, player engagement, procedural content generation, or applications beyond games?

## Methods and approaches reviewed

The paper and presentation compared several research approaches:

| Research | Approach discussed | Focus |
|---|---|---|
| Barros & Sciutti (2022) | WINNE; contrastive reinforcement learning optimization, with comparisons to DQL, PPO, ACER, and GAIL | Learning an opponent's strategy and disrupting it |
| Huang & Lee (2019) | Self-play actor-critic learning, PPO, and Generalized Advantage Estimation | Learning Pokémon battle strategies across environments |
| Rill-Garcia (2019) | Q-learning and a Markov Decision Process | Turn-based Pokémon battle decisions and reward design |
| Flaherty, Jimenez, & Abbasi (2021) | Deep Q-Networks (DQN) and Advantage Actor-Critic (A2C) | Comparing approaches for playing Pokémon Red |
| Nam & Ikeda (2021) | Deep Q-Network (DQN) and Deep Deterministic Policy Gradient (DDPG) | Reinforcement-learning-based procedural generation of RPG stages |
| Pagalyte, Mancini, & Climent (2020) | SARSA and Dynamic Difficulty Adjustment (DDA) | Balancing challenge and player skill to support game flow |

## Findings highlighted in the project

- **Opponent adaptation:** The WINNE research focused on learning patterns in an opponent's play and selecting actions intended to disrupt that opponent. The presentation highlighted both its adaptation to learning opponents and its difficulty with an agent that had no discernible strategy.
- **Self-play:** Huang and Lee's work used self-play and actor-critic methods. The reviewed results showed that an agent could perform across multiple environments, with retraining needed for different team configurations or strategies.
- **Reward design:** The Q-learning example discussed by Rill-Garcia modeled battles as a Markov Decision Process. The paper reported a 58% overall victory ratio across 100 battles.
- **Complex game environments:** The Pokémon Red study compared DQN and A2C, including image-based and RAM-based observations. The paper discussed a trade-off between training efficiency and real-world performance.
- **Procedural generation:** Nam and Ikeda compared DQN and DDPG for generating RPG stages; the reviewed work reported stronger results for DDPG in handling varied parameter ranges.
- **Player experience:** The DDA/SARSA research explored how reward settings and exploration-versus-exploitation affected opponent behavior and player experience.

These are findings as summarized in the course paper and presentation; they are not independent replications or new experiments conducted by our group.

## Deliverables

The original course work consists of:

1. **ACO494 Pokémon Compare and Contrast Paper** — a 15-page collaborative research paper reviewing and comparing the studies.
2. **Pokémon Battles in Reinforcement Learning** — a 20-slide presentation summarizing selected papers, methods, model diagrams, results, and conclusions.

The original PDF and PowerPoint are retained as the source deliverables. This public portfolio page summarizes their content; it does not reproduce the full paper or slide deck.

## Skills demonstrated

- Reading and synthesizing technical research
- Comparing reinforcement-learning algorithms and reward structures
- Explaining Markov Decision Processes and agent behavior
- Interpreting reported model results and experimental comparisons
- Communicating technical concepts through a collaborative written report and presentation

## Scope and limitations

This was a collaborative academic literature-review project. The group analyzed published approaches and reported findings; we did not claim to have implemented WINNE, trained the cited agents, reproduced the reported experiments, or built a Pokémon-playing model. Results and numerical values on this page are attributed to the studies as described in the original course materials.

## Source materials

- *ACO494 Pokemon Compare and Contrast Paper* (15 pages), by Eris Bliss, Corey Gregory, and Kathleen Kagan.
- *Pokémon Battles in Reinforcement Learning* (20-slide presentation), by Eris Bliss, Corey Gregory, and Kathleen Kagan.


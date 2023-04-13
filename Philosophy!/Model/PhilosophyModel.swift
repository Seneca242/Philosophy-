//
//  PhilosophyModel.swift
//  Philosophy!
//
//  Created by Дмитрий Дмитрий on 11.04.2023.
//


struct Philosophy {
    let movements: [Movement]?
    let schools: [School]?
    let philosophers: [Philosopher]?
}

struct Movement {
    let title: String
    let description: String?
    let school: [School]?
    let philosopher: [Philosopher]?
    
    static func getMovement() -> [Movement] {
        [
            Movement(
                title: "Ancient Philosophy",
                description: "Ancient philosophy refers to the philosophical traditions that emerged in the ancient Mediterranean world, including Greece, Rome, and the Hellenistic world. It encompasses a wide range of philosophical schools and thinkers who sought to understand the nature of reality, knowledge, ethics, and the human condition. Ancient philosophers explored fundamental questions about the nature of the universe, the role of reason in human life, and the search for a meaningful and virtuous existence. Their ideas continue to influence modern philosophical thought and have shaped the Western intellectual tradition.",
                school: [
                    School(
                        title: "Milesian School",
                        description: "The Milesian School was a pre-Socratic philosophical movement that originated in the city of Miletus, located in present-day Turkey, during the 6th century BCE. The school is named after the three philosophers who are considered its founders: Thales, Anaximander, and Anaximenes. The Milesian School is known for its emphasis on naturalistic explanations for the origin and nature of the universe, as opposed to supernatural or mythical explanations. Thales is famous for his belief that all matter can be reduced to water, Anaximander for his concept of the apeiron or the boundless, and Anaximenes for his idea that air was the fundamental substance of the cosmos. The Milesian School is regarded as one of the earliest examples of systematic philosophical thought in Western history.",
                        movement: nil,
                        philosopher: [
                            Philosopher(
                                name: "Thales of Miletus",
                                biography: "Thales of Miletus was an ancient Greek philosopher, mathematician, and astronomer who lived in the 6th century BCE. He is considered one of the Seven Sages of Greece and is often regarded as the first philosopher in the Western tradition. Thales was born in Miletus, an ancient city in Ionia (modern-day Turkey). He is said to have traveled extensively throughout Egypt and Babylon, where he studied mathematics and astronomy. Upon his return to Greece, Thales established a school of philosophy in Miletus. Thales is credited with numerous achievements, including accurately predicting a solar eclipse and discovering the principle of static electricity. He is also known for his contributions to geometry, particularly the theorem that states that the base angles of an isosceles triangle are equal. Thales' philosophy focused on the natural world and sought to explain it through rational inquiry rather than myth or legend. He believed that everything in the universe was made up of water, and that water was the fundamental substance from which all other substances were derived. Thales' influence on Western thought is immeasurable, and he is regarded as one of the founding fathers of philosophy and science. His legacy continues to inspire new generations of thinkers and innovators, and his ideas remain relevant to this day.",
                                philosopherImage: "ThalesOfMiletus",
                                doctrine: "Thales of Miletus believed that everything in the universe was ultimately made up of a single substance, which he identified as water. He held that water was the underlying material and source of all things, and that other substances were simply different forms of water. This belief was based on his observations of the natural world and his understanding of basic scientific principles. Thales believed that the earth itself floated on a vast ocean of water, and that this water was the source of all life. Thales' doctrine of the fundamental unity of nature had a profound influence on Western philosophy and science, and laid the groundwork for subsequent developments in these fields. It challenged traditional religious and mythological explanations of the natural world, and emphasized the importance of empirical observation and rational inquiry in understanding the universe.",
                                movement: nil,
                                school: nil
                            ),
                            Philosopher(
                                name: "Anaximander",
                                biography: "Anaximander was a pre-Socratic philosopher who lived in the ancient Greek city of Miletus in the 6th century BCE. He was a student of Thales, and is often regarded as one of the most important thinkers of the early Greek philosophical tradition. Anaximander was a polymath, and made significant contributions to astronomy, geography, and philosophy. He is credited with creating the first known map of the world, and proposed a cosmological theory that held that the universe was infinite and eternal, and that all things emerged from an indeterminate substance he called the apeiron. Anaximander also developed important concepts in ethics and political philosophy, arguing that justice required a separation of powers in society and that all human beings should be treated with respect and dignity. Although many of his writings have been lost to history, Anaximander's ideas had a profound impact on subsequent generations of philosophers and scientists, and his legacy continues to be felt to this day.",
                                philosopherImage: "Anaximander",
                                doctrine: <#T##String#>,
                                movement: <#T##[Movement]?#>,
                                school: <#T##[School]?#>
                            )
                        ]
                    )
                ],
                philosopher: [
                ]
            )
        ]
    }
}

struct School {
    let title: String
    let description: String
    let movement: [Movement]?
    let philosopher: [Philosopher]?
}

struct Philosopher {
    let name: String
    let biography: String
    let philosopherImage: String
    let doctrine: String
    let movement: [Movement]?
    let school: [School]?
}

enum PhilosophyType: String {
    case ancient
    case medieval
    case renaissance
    case enlightenment
    case nineteenthCentury
    case twentiethCentury
    case contemporary
}

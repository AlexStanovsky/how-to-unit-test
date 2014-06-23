how-to-unit-test
================

Few ideas to how to do unit tests, which are implemented on a Useless box.


    state_machine = StateMachine.new

    state_machine.set_state(States::OFF, {Actions::ON => States::ON,
                                          Actions::OFF => States::OFF})

    state_machine.set_state(States::ON, {Actions::ON => States::ON,
                                          Actions::OFF => States::OFF})

    UselessBox.new(state_machine).flip_switch

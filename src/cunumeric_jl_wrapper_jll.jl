# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule cunumeric_jl_wrapper_jll
using Base
using Base: UUID
using LazyArtifacts
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("cunumeric_jl_wrapper")
JLLWrappers.@generate_main_file("cunumeric_jl_wrapper", UUID("49048992-29d2-5fd1-994f-9cecf112d624"))
end  # module cunumeric_jl_wrapper_jll

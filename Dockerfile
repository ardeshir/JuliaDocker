FROM julia:latest

WORKDIR /app

COPY Project.toml Manifest.toml ./
RUN julia --project=. -e 'using Pkg; Pkg.instantiate()'

COPY . .

EXPOSE 8000

CMD ["julia", "--project=.", "app.jl"]

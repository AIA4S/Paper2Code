# Paper2Code

Transforming academic papers into functional code.

---

Paper2Code is an open-source software project that implements a CrewAI system capable of generating code based on computational science academic papers. The system is planned to replicate findings, satisfy specified conditions, and continuously improve its output through self-testing and assessment.

## Features

- Parse and analyze computational science papers
- Generate code that satisfies conditions specified in input documents
- Self-testing and continuous improvement capabilities
- Docker integration for easy deployment and execution
- Comprehensive documentation and ethical guidelines

## Prerequisites

- Python 3.12+
- Docker and Docker Compose
- Make (for using the Makefile)

Note: While Paper2Code is tested and maintained for Python 3.12+, it may work on previous versions. However, we recommend using Python 3.12+ for the best experience and support.

## Quick Start

1. Clone the repository:
   ```
   git clone https://github.com/AIA4S/Paper2Code.git
   cd Paper2Code
   ```

2. Set up a virtual environment:
   ```
   python -m venv venv
   source venv/bin/activate  # On Windows use `venv\Scripts\activate`
   ```

3. Install dependencies:
   ```
   pip install -r requirements.txt
   ```

4. Build and run the Docker containers:
   ```
   docker-compose up --build
   ```

5. Run the main application:
   ```
   python src/main.py
   ```

## Usage

To generate code from a paper or requirements document:

```
python src/main.py --input path/to/your/document.pdf
```

For more detailed usage instructions, please refer to the [User Guide](docs/user_guide.md).

## Contributing

We welcome contributions! Please see our [Contributing Guidelines](CONTRIBUTING.md) for more details.

## Documentation

Full documentation is available in the `docs/` directory:

- [Project Requirements](docs/project_requirements.md)
- [User Guide](docs/user_guide.md)
- [Developer Guide](docs/developer_guide.md)
- [Ethical Guidelines](docs/ethical_guidelines.md)
- [API Documentation](docs/api/)

## License

This project is licensed under the Apache License 2.0 - see the [LICENSE](LICENSE) file for details.

## Contact

If you have any questions or feedback, please open an issue on this repository.

---

Paper2Code - Transforming academic papers into functional code.

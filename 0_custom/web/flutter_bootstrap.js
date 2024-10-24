    /**
    * This function creates a delay of 500 milliseconds.
    *
    * @returns {Promise} A Promise that resolves after the delay.
    */
    function addDelay(duration) {
        return new Promise((resolve) => setTimeout(resolve, duration));
    }

    let message;
    let message1;
    let message2;
    let message3;

    if (navigator.language === "ko-KR" || navigator.language === "ko") {
        console.log("언어 설정이 한글입니다.");
        message1 = "시작점 로딩 중.";
        message2 = "엔진 초기화 중.";
        message3 = "앱 실행 중.";
    } else if(navigator.language === "ja-JP" || navigator.language === "ja") {
        console.log("언어 설정이 일본어입니다.");
        message1 = "エントリーポイントをロードしています.";
        message2 = "エンジンを初期化しています.";
        message3 = "アプリを実行しています.";
    } else {
        console.log("언어 설정이 영어입니다.");
        message1 = "Loading Entrypoint.";
        message2 = "Initializing engine.";
        message3 = "Running app.";
    }
    
    // Get the progress and progressBar elements from the DOM
    const image = document.getElementById("image");
    const title = document.getElementById("title").getElementsByTagName("h1")[0];
    const progress = document.getElementById("progress");
    const progressBar = document.getElementById("progressbar");

    // Initialize the width of the progress bar to 0%
    progressBar.style.width = `0%`;
    title.innerText = message1;
    message = message1;
    let dots = 0;

    // Create an interval to add dots to the message
    const loadingInterval = setInterval(() => {
        if(dots == 4){
            dots = 0;
        }else{
            dots += 1;
        }
        console.log(dots);
        title.innerText = message + ".".repeat(dots);
    }, 750); // 0.75초마다 점을 추가/변경
    
    {{flutter_js}}
    {{flutter_build_config}}

    progressBar.style.width = `33%`;

    // Load the Flutter engine
    _flutter.loader.load({
        serviceWorker: {
            serviceWorkerVersion: serviceWorkerVersion,
        },
        onEntrypointLoaded: async function(engineInitializer) {
            // Update the progress bar to 66% after the engine is loaded
            progressBar.style.width = `66%`;
            title.innerText = message2;
            message = message2;
            dots = 0;

            // Initialize the Flutter engine.
            const appRunner = await engineInitializer.initializeEngine();
    
            // Set progress to 100% before adding a delay.
            progressBar.style.width = `100%`;
            title.innerText = message3;
            message = message3;
            dots = 0;
            
            // Add a delay bofreo running the app to create a smooth crossfade effect.
            await addDelay(500);
            
            // Hide the progress bar by reducing its opacity.
            // This will create the fade out effect by animating the opacity.
            image.style.opacity = 0;
            title.style.opacity = 0;
            progress.style.opacity = 0;
            progressBar.style.opacity = 0;
            progressBar.style.width = `0%`;

            // Clear the interval when the loading process is done
            clearInterval(loadingInterval);

            // Add a delay bofreo running the app to create a smooth crossfade effect.
            await addDelay(100);

            // Run the Flutter app.
            await appRunner.runApp();
    
            // Add a fade-in effect to the Flutter view element.
            document.querySelector("flutter-view").classList.add("fade-in");
        }
    });
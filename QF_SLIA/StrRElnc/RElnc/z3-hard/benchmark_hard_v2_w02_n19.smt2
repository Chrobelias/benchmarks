(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= (str.++ x "77") (str.++ "72" y)))

(assert (str.in_re x (re.++ (re.range "3" "8") (re.+ (re.++ (re.* (str.to_re "978")) (re.range "2" "7"))))))
(assert (str.in_re y (re.+ (re.range "3" "9"))))

(assert (= (+ (* (- 4) (str.len x)) (* 2 (str.len y))) 72))
(assert (> (+ (* (- 9) (str.to_int x)) (* 9 (str.to_int y))) 51))

(check-sat)
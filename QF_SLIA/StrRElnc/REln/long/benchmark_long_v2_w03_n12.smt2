(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))

(assert (str.in_re x (re.+ (str.to_re "845"))))
(assert (str.in_re y (re.+ (re.++ (re.range "1" "9") (re.++ (re.+ (str.to_re "793")) (re.range "4" "7"))))))

(assert (= (+ (* (- 8) (str.to_int x)) (str.to_int y)) 13))
(assert (<= (+ (* 7 (str.len x)) (* 2 (str.len y))) 99))
(assert (> (+ (* (- 9) (str.len x)) (* (- 4) (str.len y))) 7))

(check-sat)
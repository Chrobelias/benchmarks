(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.+ (re.union (str.to_re "686") (str.to_re "26")))))
(assert (str.in_re z (re.+ (re.++ (str.to_re "4") (re.++ (str.to_re "0") (str.to_re "5"))))))
(assert (str.in_re y (re.+ (re.++ (re.++ (str.to_re "26") (re.+ (str.to_re "30"))) (str.to_re "367")))))
(assert (str.in_re a (re.* (re.union (str.to_re "154") (re.+ (re.range "1" "9"))))))

(assert (= (+ (* 4 (str.to_int x)) (str.to_int y) (* (- 3) (str.to_int z)) (* 9 (str.to_int a))) 37))
(assert (<= (+ (* (- 7) (str.len x)) (* (- 6) (str.len y)) (* 7 (str.len z)) (* 3 (str.len a))) 37))

(check-sat)
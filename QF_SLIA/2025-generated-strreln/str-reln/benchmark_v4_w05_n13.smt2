(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.union (re.++ (str.to_re "13") (str.to_re "2")) (re.* (str.to_re "42")))))
(assert (str.in_re y (re.+ (re.+ (re.* (str.to_re "25"))))))
(assert (str.in_re z (re.++ (re.range "2" "5") (re.++ (re.+ (str.to_re "918")) (str.to_re "44")))))
(assert (str.in_re a (re.union (re.* (re.+ (str.to_re "54"))) (str.to_re "7"))))

(assert (= (+ (* 5 (str.to_int x)) (* 8 (str.to_int y)) (* (- 4) (str.to_int z)) (* 8 (str.to_int a))) 87))
(assert (<= (+ (* (- 10) (str.len y)) (* 6 (str.to_int z)) (* 10 (str.to_int a))) 43))
(assert (< (+ (str.to_int x) (* (- 9) (str.to_int y)) (str.to_int z)) 53))
(assert (> (+ (* 8 (str.to_int x)) (* (- 3) (str.to_int y)) (* (- 9) (str.to_int z)) (* 4 (str.to_int a))) 14))

(check-sat)
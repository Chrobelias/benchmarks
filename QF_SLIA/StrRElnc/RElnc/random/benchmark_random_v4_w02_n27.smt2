(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= (str.++ z x) (str.++ "57" a "33" y)))

(assert (str.in_re y (re.+ (re.union (re.range "0" "9") (re.union (re.+ (str.to_re "64")) (re.range "0" "7"))))))
(assert (str.in_re a (re.union (re.+ (re.++ (re.+ (str.to_re "5")) (re.range "7" "9"))) (str.to_re "537"))))
(assert (str.in_re x (re.* (str.to_re "427"))))
(assert (str.in_re z (re.+ (re.union (re.* (str.to_re "63")) (re.* (re.range "3" "9"))))))

(assert (> (+ (* (- 10) (str.len x)) (* 8 (str.len a)) (* 9 (str.to_int y)) (* (- 9) (str.to_int z)) (* (- 2) (str.to_int a))) 53))

(check-sat)
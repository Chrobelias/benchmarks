(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ y x) (str.++ "84" z)))

(assert (str.in_re y (re.++ (re.++ (re.* (re.range "6" "8")) (str.to_re "4")) (str.to_re "5"))))
(assert (str.in_re x (re.++ (re.* (re.* (str.to_re "96"))) (re.+ (str.to_re "87")))))
(assert (str.in_re z (re.* (re.union (str.to_re "852") (re.union (re.+ (str.to_re "33")) (re.range "5" "9"))))))

(assert (< (+ (* (- 3) (str.len x)) (* (- 3) (str.len y)) (* 3 (str.len z))) 25))
(assert (= (+ (* (- 6) (str.len y)) (* (- 8) (str.len z)) (* 7 (str.to_int y))) 82))

(check-sat)
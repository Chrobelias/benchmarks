(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len z) 1000))

(assert (= (str.++ y x) (str.++ "88" z)))

(assert (str.in_re z (re.++ (re.range "5" "7") (re.+ (re.+ (re.range "5" "9"))))))
(assert (str.in_re x (re.* (re.union (str.to_re "9") (str.to_re "6")))))
(assert (str.in_re y (re.++ (re.+ (re.range "7" "9")) (re.++ (str.to_re "7") (re.range "2" "5")))))

(assert (> (+ (* 10 (str.len x)) (* (- 5) (str.len y)) (* (- 10) (str.len z))) 82))
(assert (< (+ (* 4 (str.to_int x)) (* (- 2) (str.to_int y)) (* 9 (str.to_int z))) 83))

(check-sat)
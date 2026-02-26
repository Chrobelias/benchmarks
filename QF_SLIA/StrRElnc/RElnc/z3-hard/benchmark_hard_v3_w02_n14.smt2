(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ y x) (str.++ "66" z)))

(assert (str.in_re y (re.* (re.union (str.to_re "8") (re.++ (re.range "6" "9") (re.+ (re.range "1" "9")))))))
(assert (str.in_re x (re.* (re.union (re.* (str.to_re "27")) (re.range "1" "6")))))
(assert (str.in_re z (re.+ (re.union (re.range "4" "7") (re.range "2" "4")))))

(assert (>= (+ (* 4 (str.len y)) (* (- 5) (str.len z)) (* (- 6) (str.to_int y))) 0))

(check-sat)
(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ y x) (str.++ z "67")))

(assert (str.in_re z (re.union (re.union (str.to_re "85") (re.* (str.to_re "4"))) (str.to_re "88"))))
(assert (str.in_re y (re.++ (re.+ (re.range "2" "8")) (re.* (re.* (re.range "4" "8"))))))
(assert (str.in_re x (re.* (re.* (re.union (str.to_re "15") (re.+ (re.range "5" "9")))))))

(assert (= (+ (* 6 (str.len y)) (* 7 (str.to_int x))) 30))

(check-sat)
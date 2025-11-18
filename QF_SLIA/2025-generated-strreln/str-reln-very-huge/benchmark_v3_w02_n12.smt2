(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 100))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 100))
(assert (>= (str.to_int z) 0))
(assert (>= (str.len z) 100))

(assert (str.in_re x (re.union (str.to_re "676") (re.++ (re.union (re.+ (str.to_re "892")) (str.to_re "4")) (str.to_re "571")))))
(assert (str.in_re y (re.++ (re.+ (re.range "2" "6")) (re.++ (re.range "5" "7") (str.to_re "609")))))
(assert (str.in_re z (re.* (re.* (re.+ (re.+ (re.range "6" "9")))))))

(assert (= (+ (* 4 (str.len y)) (* (- 3) (str.to_int x)) (* (- 9) (str.to_int y))) 96))

(check-sat)
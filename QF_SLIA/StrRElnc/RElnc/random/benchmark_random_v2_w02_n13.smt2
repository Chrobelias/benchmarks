(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ y "56")))

(assert (str.in_re x (re.union (re.union (re.range "5" "9") (re.+ (re.range "3" "9"))) (re.+ (str.to_re "76")))))
(assert (str.in_re y (re.+ (re.union (str.to_re "19") (re.++ (re.range "6" "9") (re.* (str.to_re "892")))))))

(assert (< (+ (* 5 (str.len y)) (* 2 (str.to_int x))) 87))

(check-sat)
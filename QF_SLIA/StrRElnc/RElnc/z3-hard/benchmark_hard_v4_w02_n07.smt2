(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= (str.++ z y) (str.++ x "21" a)))

(assert (str.in_re x (re.+ (re.union (str.to_re "177") (re.range "3" "7")))))
(assert (str.in_re a (re.++ (re.union (re.+ (str.to_re "56")) (str.to_re "7")) (re.range "6" "9"))))
(assert (str.in_re z (re.++ (re.* (str.to_re "1")) (re.union (str.to_re "75") (re.range "5" "8")))))
(assert (str.in_re y (re.union (re.union (re.range "0" "7") (re.+ (re.range "0" "7"))) (str.to_re "7"))))

(assert (< (+ (* 7 (str.len x)) (* (- 6) (str.len y)) (str.len z) (str.to_int x) (* 8 (str.to_int a))) 56))

(check-sat)